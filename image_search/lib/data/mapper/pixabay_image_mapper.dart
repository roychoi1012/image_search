import 'package:image_search/data/dto/pixabay_image_dto.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';

extension PixabayImageMapper on PixabayImage {
  PixabayImageModel toModel() {
    return PixabayImageModel(
      id: _toInt(id),
      pageUrl: pageURL ?? '',
      type: type ?? '',
      tags: tags ?? '',
      previewUrl: previewURL ?? '',
      previewWidth: _toInt(previewWidth),
      previewHeight: _toInt(previewHeight),
      webformatUrl: webformatURL ?? '',
      webformatWidth: _toInt(webformatWidth),
      webformatHeight: _toInt(webformatHeight),
      largeImageUrl: largeImageURL ?? '',
      imageWidth: _toInt(imageWidth),
      imageHeight: _toInt(imageHeight),
      imageSize: _toInt(imageSize),
      views: _toInt(views),
      downloads: _toInt(downloads),
      favorites: _toInt(favorites),
      likes: _toInt(likes),
      comments: _toInt(comments),
      userId: _toInt(userId),
      user: user ?? '',
      userImageUrl: userImageURL ?? '',
    );
  }

  int _toInt(num? value) => value?.toInt() ?? 0;
}
