import 'package:flutter/material.dart';
import 'package:object_detection/core/dependencies/dependency_init.dart';
import 'package:object_detection/features/home/presentation/screens/views/local_gallery/view_model/local_gallery_bloc.dart';
import 'package:object_detection/gen/assets.gen.dart';
import 'package:object_detection/ui/resources/index.dart';
import 'package:object_detection/ui/widgets/index.dart';
import '../../../../../../../ui/helper/navigation_service.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key, required this.galleryBloc});

  final NavigationService _navigationService = getIt<NavigationService>();
  final LocalGalleryBloc galleryBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          60.heightBox,
          AppContainer(child: AppImage(path: Assets.images.detect.path, isRemote: false)),
          20.heightBox,
          AppText(text: AppStrings.openYourCameraToDetectObjects),
          60.heightBox,
          _buildOpenCameraButton(),
        ],
      ),
    );
  }

  Widget _buildOpenCameraButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: ()=>_navigationService.routeTo(AppRoute.objectDetectionScreen),
          child: AppContainer(
            color: AppColors.primaryColor,
            child: Column(
              children: [
                AppSVGImage(image: Assets.icons.detection, color: AppColors.white, width: 35),
                4.heightBox,
                AppText(text: AppStrings.detectObjects, color: AppColors.white)
              ],
            ),
          ),
        ),
        InkWell(
          onTap: ()=>galleryBloc.add(LocalGalleryEvent.pickImage()),
          child: AppContainer(
            color: AppColors.primaryColor,
            child: Column(
              children: [
                AppSVGImage(image: Assets.icons.camera, color: AppColors.white, width: 35),
                4.heightBox,
                AppText(text: AppStrings.openCamera, color: AppColors.white)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
