import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:object_detection/features/home/data/models/image_model.dart';
import '../../domain/repository/loacl_gallery_repository.dart';

@Injectable(as: LocalGalleryRepository)
class LocalGalleryRepositoryImpl extends LocalGalleryRepository {
  final Box _imageBox = Hive.box(ImageModel.boxKey);
  final ImagePicker picker = ImagePicker();

  @override
  Future<String?> pickImage() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo == null) return null;
    return photo.path;
  }

  @override
  Future<void> saveImage(ImageModel imageModel) async {
    await _imageBox.put(imageModel.imageId!,imageModel);
  }

  @override
  List<ImageModel> fetchImages() {
    List<ImageModel> imagesList = _imageBox.values.map((e) => e as ImageModel).toList();
    return imagesList;
  }

  @override
  Future<void> deleteImage(String id) async {
    await _imageBox.delete(id);
  }
}
