import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:object_detection/features/detection/screens/object_detection_screen/view_model/object_detection_bloc.dart';
import '../../../../../core/dependencies/dependency_init.dart';
import '../../widgets/camera_view.dart';

class ObjectDetectorView extends StatelessWidget {
  ObjectDetectorView({super.key});

  final ObjectDetectionBloc _objectDetectionBloc = getIt<ObjectDetectionBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _objectDetectionBloc..add(ObjectDetectionEvent.init()),
        child: BlocBuilder<ObjectDetectionBloc, ObjectDetectionState>(
          builder: (context, state) {
            return Stack(
              children: [
                CameraView(
                  customPaint: state.customPaint,
                  onImage:(image)=>_objectDetectionBloc.add(ObjectDetectionEvent.onImageProcessing(image: image)),
                  initialCameraLensDirection: CameraLensDirection.back,
                )
              ],
            );
          },
        ),
      ),
    );
  }

}
