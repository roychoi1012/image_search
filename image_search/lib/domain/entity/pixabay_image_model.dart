import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_image_model.freezed.dart';
part 'pixabay_image_model.g.dart';

@freezed
class PixabayImageModel with _$PixabayImageModel {
  const factory PixabayImageModel({
    required int id,
    required String pageUrl,
    required String type,
    required String tags,
    required String previewUrl,
    required int previewWidth,
    required int previewHeight,
    required String webformatUrl,
    required int webformatWidth,
    required int webformatHeight,
    required String largeImageUrl,
    required int imageWidth,
    required int imageHeight,
    required int imageSize,
    required int views,
    required int downloads,
    required int favorites,
    required int likes,
    required int comments,
    required int userId,
    required String user,
    required String userImageUrl,
  }) = _PixabayImageModel;

  factory PixabayImageModel.fromJson(Map<String, dynamic> json) =>
      _$PixabayImageModelFromJson(json);
}
