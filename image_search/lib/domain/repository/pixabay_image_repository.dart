// lib/domain/repository/pixabay_image_repository.dart

import 'package:image_search/core/result.dart';
import 'package:image_search/core/network_error.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';

abstract class PixabayImageRepository {
  Future<Result<List<PixabayImageModel>, NetworkError>> getImages(String query);
}
