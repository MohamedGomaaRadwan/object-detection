import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/domain/usecase/get_images_usecase.dart';
import 'package:object_detection/features/home/domain/usecase/upload_images_usecase.dart';
import '../../../../../data/models/image_model.dart';

part 'synced_gallery_bloc.freezed.dart';

@freezed
class SyncedGalleryEvent with _$SyncedGalleryEvent {
  factory SyncedGalleryEvent.fetchImages() = _OnFetchingImagesEvent;
  factory SyncedGalleryEvent.updateImages({required List<ImageModel> images}) = _OnUpdateImagesEvent;

  factory SyncedGalleryEvent.saveImages({required List<ImageModel> images}) = _OnImageSavedEvent;
}

@freezed
class SyncedGalleryState with _$SyncedGalleryState {
  factory SyncedGalleryState({
    @Default(false) bool isLoading,
    @Default([]) List<ImageModel> images,
    String? errorMessage,
  }) = _SyncedGalleryState;
}

@injectable
class SyncedGalleryBloc extends Bloc<SyncedGalleryEvent, SyncedGalleryState> {
  final UploadImagesUsecase _uploadImagesUsecase;
  final GetImagesUsecase _getImagesUsecase;
  List<ImageModel> imagesList = [];

  SyncedGalleryBloc(this._uploadImagesUsecase, this._getImagesUsecase) : super(SyncedGalleryState()) {
    on<_OnFetchingImagesEvent>(_onFetchImages);
    on<_OnImageSavedEvent>(_onImageSaved);
    on<_OnUpdateImagesEvent>(_onUpdateImages);
  }

  FutureOr<void> _onFetchImages(_OnFetchingImagesEvent event, Emitter<SyncedGalleryState> emit) async {
    emit(state.copyWith(isLoading: true));
    Stream<List<ImageModel>> imageStream=_getImagesUsecase.execute();
   imageStream.listen((images) {
     add(SyncedGalleryEvent.updateImages(images: images));
   });
  }

  FutureOr<void> _onUpdateImages(event, Emitter<SyncedGalleryState> emit) {
    emit(state.copyWith(isLoading: false, images: event.images));
  }

  FutureOr<void> _onImageSaved(_OnImageSavedEvent event, Emitter<SyncedGalleryState> emit) async {
    emit(state.copyWith(isLoading: true));
    await _uploadImagesUsecase.execute(event.images);
    emit(state.copyWith(isLoading: false));
  }

}
