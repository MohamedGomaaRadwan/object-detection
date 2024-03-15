import 'package:injectable/injectable.dart';
import '../../data/models/image_model.dart';
import '../repository/loacl_gallery_repository.dart';

@injectable
class FetchLocalImagesUsecase {
  final LocalGalleryRepository _galleryRepository;

  FetchLocalImagesUsecase(this._galleryRepository);

  List<ImageModel> execute() {
    try {
      List<ImageModel> imagesList = _galleryRepository.fetchImages();
      return imagesList;
    } catch (e) {
      throw Exception(e);
    }
  }
}
