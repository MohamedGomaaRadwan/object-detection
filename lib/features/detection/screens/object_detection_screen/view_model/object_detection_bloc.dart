import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:injectable/injectable.dart';
import '../../widgets/object_detector_painter.dart';
part 'object_detection_bloc.freezed.dart';

@freezed
class ObjectDetectionEvent with _$ObjectDetectionEvent {
  factory ObjectDetectionEvent.init() = _OnInitEvent;

  factory ObjectDetectionEvent.onImageProcessing({required InputImage image}) = _OnImageProcessingEvent;
}

@freezed
class ObjectDetectionState with _$ObjectDetectionState {
  factory ObjectDetectionState({
    @Default(false) bool isLoading,
    CustomPaint? customPaint,
    String? errorMessage,
  }) = _ObjectDetectionState;
}

@injectable
class ObjectDetectionBloc extends Bloc<ObjectDetectionEvent, ObjectDetectionState> {
  ObjectDetector? _objectDetector;
  bool _canProcess = false;
  bool _isBusy = false;
  CustomPaint? _customPaint;

  ObjectDetectionBloc() : super(ObjectDetectionState()) {
    on<_OnInitEvent>(_onInit);
    on<_OnImageProcessingEvent>(_onImageProcessing);
  }

  FutureOr<void> _onInit(event, Emitter<ObjectDetectionState> emit) {
    _objectDetector?.close();
    _objectDetector = null;
    final options = ObjectDetectorOptions(mode: DetectionMode.stream, classifyObjects: true, multipleObjects: true);
    _objectDetector = ObjectDetector(options: options);
    _canProcess = true;
  }

  FutureOr<void> _onImageProcessing(_OnImageProcessingEvent event, Emitter<ObjectDetectionState> emit) async {
    final inputImage=event.image;
    if (_objectDetector == null) return;
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    final objects = await _objectDetector!.processImage(inputImage);
    if (inputImage.metadata?.size != null && inputImage.metadata?.rotation != null) {
      final painter = ObjectDetectorPainter(
        objects,
        inputImage.metadata!.size,
        inputImage.metadata!.rotation,
        CameraLensDirection.back,
      );
      _customPaint = CustomPaint(painter: painter);
    } else {
      _customPaint = null;
    }
    _isBusy = false;
    emit(state.copyWith(customPaint: _customPaint));
  }

  @override
  Future<void> close() {
    _canProcess = false;
    _objectDetector?.close();
    return super.close();
  }
}
