import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import 'package:object_detection/features/home/presentation/screens/views/synced_gallary/view_model/synced_gallery_bloc.dart';
import 'package:object_detection/gen/assets.gen.dart';
import 'package:object_detection/ui/resources/index.dart';
import 'package:object_detection/ui/widgets/index.dart';
import '../view_model/local_gallery_bloc.dart';

class LocalGalleryView extends StatelessWidget {
  const LocalGalleryView({super.key, required this.galleryBloc, required this.syncedGalleryBloc});

  final LocalGalleryBloc galleryBloc;
  final SyncedGalleryBloc syncedGalleryBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => galleryBloc..add(LocalGalleryEvent.fetchImages()),
      child: BlocBuilder<LocalGalleryBloc, LocalGalleryState>(
        builder: (context, state) {
          if (state.isLoading) return const AppLoading();
          if (state.images.isEmpty) return Center(child: AppText(text: AppStrings.noItems));
          return SafeArea(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    20.heightBox,
                    _buildScreenBar(state),
                    20.heightBox,
                    ...[
                      Expanded(
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 0.7,
                          ),
                          itemCount: state.images.length,
                          itemBuilder: (context, index) {
                            return state.isDeleteImage
                                ? const AppLoading()
                                : InkWell(
                                    onLongPress: () => galleryBloc.add(LocalGalleryEvent.toggleImageSelection()),
                                    child: Stack(
                                      children: [
                                        Image.file(File(state.images[index].imagePath!)),
                                        state.isSelectionEnabled ? _buildSelection(state, state.images[index]) : Container(),
                                        _buildDeleteButton(state.images[index].imageId!),
                                      ],
                                    ),
                                  );
                          },
                        ),
                      )
                    ]
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Row _buildScreenBar(LocalGalleryState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        30.widthBox,
        AppText(text: AppStrings.localAlbum, fontSize: 20),
        state.isSelectionEnabled
            ? Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () => syncedGalleryBloc.add(SyncedGalleryEvent.saveImages(images: state.selectedImages)),
                  child: AppSVGImage(image: Assets.icons.sync, width: 35),
                ),
              )
            : 30.widthBox,
      ],
    );
  }

  Positioned _buildDeleteButton(String id) {
    return Positioned(
      right: 10,
      top: 10,
      child: InkWell(
        onTap: () => galleryBloc.add(LocalGalleryEvent.deleteImage(id: id)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: AppColors.red.withOpacity(0.4), borderRadius: BorderRadius.circular(8)),
          child: AppSVGImage(image: Assets.icons.delete, color: AppColors.red),
        ),
      ),
    );
  }

  Widget _buildSelection(LocalGalleryState state, ImageModel imageModel) {
    bool isSelected = state.selectedImages.contains(imageModel);
    return Positioned(
      left: 10,
      top: 10,
      child: InkWell(
        onTap: () => galleryBloc.add(LocalGalleryEvent.selectImage(imageModel: imageModel)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: isSelected ? const Icon(Icons.check_circle, color: AppColors.white) : const Icon(Icons.circle_outlined, color: AppColors.white),
        ),
      ),
    );
  }
}
