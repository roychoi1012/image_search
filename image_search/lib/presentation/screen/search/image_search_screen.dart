import 'package:flutter/material.dart';
import 'package:image_search/presentation/widget/image_grid_widget.dart';
import 'package:image_search/presentation/widget/search_bar_widget.dart';

class ImageSearchScreen extends StatelessWidget {
  const ImageSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 앱'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchBarWidget(),
          Expanded(child: ImageGridWidget()),
        ],
      ),
    );
  }
}
