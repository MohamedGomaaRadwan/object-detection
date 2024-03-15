import '../../data/models/image_model.dart';

abstract class LocalGalleryRepository{
  Future<void> deleteImage(String id);
  Future<String?> pickImage();
  List<ImageModel> fetchImages();
  Future<void> saveImage(ImageModel imageModel);
}