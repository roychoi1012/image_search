// lib/domain/usecase/get_pixabay_images_usecase.dart

import 'package:image_search/core/result.dart';
import 'package:image_search/core/network_error.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';

abstract class GetPixabayImagesUseCase {
  Future<Result<List<PixabayImageModel>, NetworkError>> call(String query);
}
