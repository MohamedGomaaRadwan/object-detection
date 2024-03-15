import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:object_detection/features/home/presentation/screens/views/synced_gallary/view_model/synced_gallery_bloc.dart';
import 'package:object_detection/ui/resources/app_strings.dart';
import 'package:object_detection/ui/resources/index.dart';
import '../../../../../../../ui/widgets/app_text.dart';
import '../../../../../../../ui/widgets/loading.dart';

class SyncedGalleryView extends StatelessWidget {
  const SyncedGalleryView({super.key, required this.syncedGalleryBloc});

  final SyncedGalleryBloc syncedGalleryBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => syncedGalleryBloc..add(SyncedGalleryEvent.fetchImages()),
      child: BlocBuilder<SyncedGalleryBloc, SyncedGalleryState>(
        builder: (context, state) {
          if (state.isLoading) return const AppLoading();
          if (state.images.isEmpty) return Center(child: AppText(text: AppStrings.noItems));
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: AppText(text: AppStrings.syncedAlbum,textAlign: TextAlign.center,fontSize: 20)),
                20.heightBox,
                ...[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0, childAspectRatio: 0.7),
                        itemCount: state.images.length,
                        itemBuilder: (context, index) {
                          return Image.file(File(state.images[index].imagePath!));
                        },
                      ),
                    ),
                  )
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
