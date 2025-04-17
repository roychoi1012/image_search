// lib/data/repository/pixabay_image_repository_impl.dart

import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:image_search/core/result.dart';
import 'package:image_search/core/network_error.dart';
import 'package:image_search/data/data_source/pixabay_image_data_source.dart';
import 'package:image_search/data/mapper/pixabay_image_mapper.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';
import 'package:image_search/domain/repository/pixabay_image_repository.dart';

class PixabayImageRepositoryImpl implements PixabayImageRepository {
  final PixabayImageDataSource _dataSource;

  PixabayImageRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<PixabayImageModel>, NetworkError>> getImages(String query) async {
    try {
      final dto = await _dataSource.getImages(query);
      final models = dto.hits?.map((e) => e.toModel()).toList() ?? [];
      return Success(models);
    } on TimeoutException {
      return const Failure(NetworkError.timeout);
    } on http.ClientException {
      return const Failure(NetworkError.noConnection);
    } catch (_) {
      return const Failure(NetworkError.unknown);
    }
  }
}
