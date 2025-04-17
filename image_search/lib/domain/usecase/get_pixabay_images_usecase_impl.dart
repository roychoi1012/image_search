// lib/domain/usecase/get_pixabay_images_usecase_impl.dart

import 'package:image_search/core/result.dart';
import 'package:image_search/core/network_error.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';
import 'package:image_search/domain/repository/pixabay_image_repository.dart';
import 'get_pixabay_images_usecase.dart';

class GetPixabayImagesUseCaseImpl implements GetPixabayImagesUseCase {
  final PixabayImageRepository _repository;

  GetPixabayImagesUseCaseImpl(this._repository);

  @override
  Future<Result<List<PixabayImageModel>, NetworkError>> call(String query) {
    return _repository.getImages(query);
  }
}
