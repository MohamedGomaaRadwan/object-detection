import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vision/flutter_vision.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'object_detection_bloc.freezed.dart';

@freezed
class ObjectDetectionEvent with _$ObjectDetectionEvent {
  factory ObjectDetectionEvent.init() = _OnInitEvent;

  factory ObjectDetectionEvent.startDetection() = _OnStartDetectionEvent;

  factory ObjectDetectionEvent.stopDetection() = _OnStopDetectionEvent;
}

@freezed
class ObjectDetectionState with _$ObjectDetectionState {
  factory ObjectDetectionState({
    @Default(false) bool isLoading,
    @Default(false) bool isDetectionOn,
    @Default([]) List<Map<String, dynamic>> detectionResults,
    CameraController? cameraController,
    String? errorMessage,
  }) = _ObjectDetectionState;
}

@injectable
class ObjectDetectionBloc extends Bloc<ObjectDetectionEvent, ObjectDetectionState> {
  final FlutterVision _vision = FlutterVision();
  final ImagePicker picker = ImagePicker();
  late List<CameraDescription> _cameras;
  late CameraController _cameraController;
  List<Map<String, dynamic>> _detectionResults=[];
  bool _isDetecting = false;

  ObjectDetectionBloc() : super(ObjectDetectionState()) {
    on<_OnInitEvent>(_onInit);
    on<_OnStartDetectionEvent>(_onStartDetection);
    on<_OnStopDetectionEvent>(_onStopDetection);
  }


  FutureOr<void> _onInit(event, Emitter<ObjectDetectionState> emit) async {
    _cameras = await availableCameras();
    _cameraController = CameraController(_cameras[0], ResolutionPreset.medium, enableAudio: false);
    await _cameraController.initialize();
    await _vision.loadYoloModel(labels: 'assets/labels.txt', modelPath: 'assets/yolov5n.tflite', modelVersion: 'yolov5', quantization: false, numThreads: 2, useGpu: true);
    emit(state.copyWith(cameraController: _cameraController));
  }

  FutureOr<void> _onStopDetection(event, Emitter<ObjectDetectionState> emit) async {
    emit(state.copyWith(isDetectionOn: false));
    if (!_isDetecting) return;
    _isDetecting = false;
    await _cameraController.stopImageStream();
    _detectionResults.clear();
    emit(state.copyWith(detectionResults: _detectionResults));
  }

  FutureOr<void> _onStartDetection(event, Emitter<ObjectDetectionState> emit) async {
    emit(state.copyWith(isDetectionOn: true));
    _detectionResults.clear();
    await _cameraController.startImageStream((CameraImage image) async {
      if (!_isDetecting) return;
      _isDetecting = true;
      final results = await _vision.yoloOnFrame(
          bytesList: image.planes.map((plane) => plane.bytes).toList(),
          imageHeight: image.height,
          imageWidth: image.width,
          iouThreshold: 0.4,
          confThreshold: 0.4,
          classThreshold: 0.5);
      _detectionResults=results;
      emit(state.copyWith(detectionResults: _detectionResults));
    });
  }

  @override
  Future<void> close() {
    _cameraController.dispose();
    _vision.closeYoloModel();
    return super.close();
  }


}
