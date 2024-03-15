import 'package:injectable/injectable.dart';
import '../repository/loacl_gallery_repository.dart';

@injectable
class DeleteLocalImageUsecase {
  final LocalGalleryRepository _galleryRepository;

  DeleteLocalImageUsecase(this._galleryRepository);

  Future<void> execute({required String id}) async {
    await _galleryRepository.deleteImage(id);
  }
}
