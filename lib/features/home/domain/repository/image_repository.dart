import 'package:object_detection/features/home/data/models/image_model.dart';

abstract class ImageRepository{
  Future<void> uploadImage(ImageModel imageModel);
  Future<void> uploadImageList(List<ImageModel >list);
  Stream<List<ImageModel>> getImageStream();
}