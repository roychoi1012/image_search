import 'package:flutter/material.dart';
import 'package:image_search/core/result.dart';
import 'package:image_search/core/network_error.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';
import 'package:image_search/domain/usecase/get_pixabay_images_usecase.dart';

class PixabayImageViewModel with ChangeNotifier {
  final GetPixabayImagesUseCase _getImages;

  PixabayImageViewModel(this._getImages);

  List<PixabayImageModel> _images = [];
  String? _eventMessage;

  List<PixabayImageModel> get images => _images;
  String? get eventMessage => _eventMessage;

  Future<void> fetchImages(String query) async {
    final result = await _getImages(query);

    if (result is Success<List<PixabayImageModel>>) {
      _images = result.data;
      _eventMessage = null;
    } else if (result is Failure<NetworkError>) {
      final error = result.error;
      _eventMessage = switch (error) {
        NetworkError.noConnection => '인터넷 연결이 불안정합니다.',
        NetworkError.timeout => '요청 시간이 초과되었습니다.',
        NetworkError.unknown => '알 수 없는 오류가 발생했습니다.',
      };
    }

    notifyListeners();
  }

  void clearEvent() {
    _eventMessage = null;
    notifyListeners();
  }
}
