// lib/data/data_source/pixabay_image_data_source.dart

import 'package:image_search/data/dto/pixabay_image_dto.dart';

abstract class PixabayImageDataSource {
  Future<PixabayImageDto> getImages(String query); 
}
