import 'package:flutter/material.dart';
import 'package:image_search/presentation/screen/search/pixabay_image_view_model.dart';
import 'package:provider/provider.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<PixabayImageViewModel>();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: viewModel.fetchImages, // 실시간 호출
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: '검색어를 입력하세요',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
