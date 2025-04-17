class PixabayImageDto {
  final num? total;
  final num? totalHits;
  final List<PixabayImage>? hits;

  PixabayImageDto({
    this.total,
    this.totalHits,
    this.hits,
  });

  factory PixabayImageDto.fromJson(Map<String, dynamic> json) {
    return PixabayImageDto(
      total: json['total'] as num?,
      totalHits: json['totalHits'] as num?,
      hits: (json['hits'] as List<dynamic>?)
          ?.map((item) => PixabayImage.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class PixabayImage {
  final num? id;
  final String? pageURL;
  final String? type;
  final String? tags;
  final String? previewURL;
  final num? previewWidth;
  final num? previewHeight;
  final String? webformatURL;
  final num? webformatWidth;
  final num? webformatHeight;
  final String? largeImageURL;
  final num? imageWidth;
  final num? imageHeight;
  final num? imageSize;
  final num? views;
  final num? downloads;
  final num? favorites;
  final num? likes;
  final num? comments;
  final num? userId;
  final String? user;
  final String? userImageURL;

  PixabayImage({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.favorites,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  });

  factory PixabayImage.fromJson(Map<String, dynamic> json) {
    return PixabayImage(
      id: json['id'] as num?,
      pageURL: json['pageURL'] as String?,
      type: json['type'] as String?,
      tags: json['tags'] as String?,
      previewURL: json['previewURL'] as String?,
      previewWidth: json['previewWidth'] as num?,
      previewHeight: json['previewHeight'] as num?,
      webformatURL: json['webformatURL'] as String?,
      webformatWidth: json['webformatWidth'] as num?,
      webformatHeight: json['webformatHeight'] as num?,
      largeImageURL: json['largeImageURL'] as String?,
      imageWidth: json['imageWidth'] as num?,
      imageHeight: json['imageHeight'] as num?,
      imageSize: json['imageSize'] as num?,
      views: json['views'] as num?,
      downloads: json['downloads'] as num?,
      favorites: json['favorites'] as num?,
      likes: json['likes'] as num?,
      comments: json['comments'] as num?,
      userId: json['user_id'] as num?,
      user: json['user'] as String?,
      userImageURL: json['userImageURL'] as String?,
    );
  }
}
