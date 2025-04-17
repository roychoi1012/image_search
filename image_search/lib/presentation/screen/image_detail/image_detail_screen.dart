import 'package:flutter/material.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';

class ImageDetailScreen extends StatelessWidget {
  final PixabayImageModel image;

  const ImageDetailScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(image.tags)),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Image.network(image.largeImageUrl),
            const SizedBox(height: 12),
            Text('작가: ${image.user}'),
            Text('좋아요: ${image.likes}, 조회수: ${image.views}'),
          ],
        ),
      ),
    );
  }
}
