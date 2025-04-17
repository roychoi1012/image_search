import 'package:flutter/material.dart';
import 'package:image_search/presentation/screen/search/pixabay_image_view_model.dart';
import 'package:image_search/presentation/widget/image_card_widget.dart';
import 'package:provider/provider.dart';

class ImageGridWidget extends StatelessWidget {
  const ImageGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PixabayImageViewModel>();
    final images = viewModel.images;

    if (images.isEmpty) {
      return const Center(
        child: Text('이미지가 없습니다...😰', style: TextStyle(fontSize: 25)),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        final image = images[index];
        return ImageCardWidget(image: image);
      },
    );
  }
}
