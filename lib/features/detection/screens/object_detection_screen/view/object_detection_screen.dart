import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:object_detection/core/dependencies/dependency_init.dart';
import '../view_model/object_detection_bloc.dart';

class ObjectDetectionScreen extends StatelessWidget {
  ObjectDetectionScreen({super.key});
  final ObjectDetectionBloc _objectDetectionBloc = getIt<ObjectDetectionBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _objectDetectionBloc..add(ObjectDetectionEvent.init()),
      child: BlocBuilder<ObjectDetectionBloc, ObjectDetectionState>(
        builder: (context, state) {
          if(state.cameraController==null)return Container();
          if(!state.cameraController!.value.isInitialized)return Container();
          return Scaffold(
            appBar: AppBar(title: const Text('Object Detection')),
            body: Stack(
              children: [
                CameraPreview(state.cameraController!),
                ..._displayBoxesAroundRecognizedObjects(MediaQuery.of(context).size, state.cameraController!, state.detectionResults),
              ],
            ),
            floatingActionButton: _buildFloatingActionButton(state),
          );
        },
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton(ObjectDetectionState state) {
    return FloatingActionButton(
      onPressed: state.isDetectionOn
          ? () => _objectDetectionBloc.add(ObjectDetectionEvent.stopDetection())
          : () => _objectDetectionBloc.add(ObjectDetectionEvent.startDetection()),
      child: Icon(state.isDetectionOn ? Icons.stop : Icons.play_arrow),
    );
  }

  List<Widget> _displayBoxesAroundRecognizedObjects(Size screen, CameraController cameraController, List<Map<String, dynamic>> detectionResults) {
    if (detectionResults.isEmpty) return [];
    double previewWidth = cameraController.value.previewSize!.width;
    double previewHeight = cameraController.value.previewSize!.height;
    double screenAspectRatio = screen.width / screen.height;
    double previewAspectRatio = previewHeight / previewWidth;
    double scaleX = screenAspectRatio / previewAspectRatio;
    double scaleY = 1.0;
    if (scaleX < scaleY) {
      scaleY = scaleX;
    } else {
      scaleX = scaleY;
    }
    double scaledWidth = screen.width * scaleX;
    double scaledHeight = screen.height * scaleY;
    double leftOffset = (screen.width - scaledWidth) / 2;
    double topOffset = (screen.height - scaledHeight) / 2;
    return detectionResults.map((result) {
      return Positioned(
        left: leftOffset + result["box"][1] * scaledWidth,
        top: topOffset + result["box"][0] * scaledHeight,
        width: (result["box"][3] - result["box"][1]) * scaledWidth,
        height: (result["box"][2] - result["box"][0]) * scaledHeight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: Colors.pink, width: 2.0),
          ),
          child: Text(
            "${result['tag']} ${(result['box'][4] * 100).toStringAsFixed(0)}%",
            style: TextStyle(
              background: Paint()..color = Colors.black,
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
      );
    }).toList();
  }
}
