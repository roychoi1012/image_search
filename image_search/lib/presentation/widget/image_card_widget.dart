import 'package:flutter/material.dart';
import 'package:image_search/domain/entity/pixabay_image_model.dart';
import 'package:image_search/presentation/screen/image_detail/image_detail_screen.dart';

class ImageCardWidget extends StatelessWidget {
  final PixabayImageModel image;

  const ImageCardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ImageDetailScreen(image: image),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          image.previewUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
