import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/domain/usecase/delete_local_image_usecase.dart';
import 'package:object_detection/features/home/domain/usecase/fetch_local_images_usecase.dart';
import '../../../../../data/models/image_model.dart';
import '../../../../../domain/usecase/pick_image_usecase.dart';

part 'local_gallery_bloc.freezed.dart';

@freezed
class LocalGalleryEvent with _$LocalGalleryEvent {
  factory LocalGalleryEvent.pickImage() = _OnPickImageEvent;

  factory LocalGalleryEvent.fetchImages() = _OnFetchingImagesEvent;

  factory LocalGalleryEvent.deleteImage({required String id}) = _OnImageDeletedEvent;

  factory LocalGalleryEvent.toggleImageSelection() = _OnToggleImageSelectionEvent;

  factory LocalGalleryEvent.selectImage({required ImageModel imageModel}) = _OnSelectImageEvent;
}

@freezed
class LocalGalleryState with _$LocalGalleryState {
  factory LocalGalleryState({
    @Default(false) bool isLoading,
    @Default(false) bool isDeleteImage,
    @Default(false) bool isSelectionEnabled,
    @Default(false) bool isImageSelected,
    @Default([]) List<ImageModel> images,
    @Default([]) List<ImageModel> selectedImages,
    String? errorMessage,
  }) = _LocalGalleryState;
}

@injectable
class LocalGalleryBloc extends Bloc<LocalGalleryEvent, LocalGalleryState> {
  final PickImageUsecase _pickImageUsecase;
  final FetchLocalImagesUsecase _fetchLocalImagesUsecase;
  final DeleteLocalImageUsecase _deleteLocalImageUsecase;
  List<ImageModel> selectedImages=[];
  LocalGalleryBloc(
    this._pickImageUsecase,
    this._fetchLocalImagesUsecase,
    this._deleteLocalImageUsecase
  ) : super(LocalGalleryState()) {
    on<_OnPickImageEvent>(_onPickImage);
    on<_OnFetchingImagesEvent>(_onFetchImages);
    on<_OnImageDeletedEvent>(_onImageDeleted);
    on<_OnToggleImageSelectionEvent>(_onToggleImageSelection);
    on<_OnSelectImageEvent>(_onSelectImage);
  }

  FutureOr<void> _onPickImage(_OnPickImageEvent event, Emitter<LocalGalleryState> emit) async {
    await _pickImageUsecase.execute();
    add(LocalGalleryEvent.fetchImages());
  }

  FutureOr<void> _onFetchImages(_OnFetchingImagesEvent event, Emitter<LocalGalleryState> emit) async {
    emit(state.copyWith(isLoading: true));
    List<ImageModel> imagesList=_fetchLocalImagesUsecase.execute();
    emit(state.copyWith(isLoading: false,images: imagesList));
  }

  FutureOr<void> _onImageDeleted(_OnImageDeletedEvent event, Emitter<LocalGalleryState> emit) async {
    emit(state.copyWith(isDeleteImage: true));
    await _deleteLocalImageUsecase.execute(id:event.id);
    add(LocalGalleryEvent.fetchImages());
    emit(state.copyWith(isDeleteImage: false));
  }

  Future<void> _onToggleImageSelection(_OnToggleImageSelectionEvent event, Emitter<LocalGalleryState> emit) async{
    selectedImages.clear();
    emit(state.copyWith(isSelectionEnabled: !state.isSelectionEnabled));
  }

  FutureOr<void> _onSelectImage(_OnSelectImageEvent event, Emitter<LocalGalleryState> emit)async {
    bool isImageSelected=false;
    if(!selectedImages.contains(event.imageModel)){
      selectedImages.add(event.imageModel);
      isImageSelected=true;
    }else{
      selectedImages.remove(event.imageModel);
    }
    emit(state.copyWith(selectedImages: selectedImages,isImageSelected:isImageSelected));
  }
}
