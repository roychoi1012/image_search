import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_search/presentation/screen/search/image_search_screen.dart';
import 'package:image_search/presentation/screen/search/pixabay_image_view_model.dart';
import 'package:image_search/domain/usecase/get_pixabay_images_usecase_impl.dart';
import 'package:image_search/data/repository/pixabay_image_repository_impl.dart';
import 'package:image_search/data/data_source/pixabay_image_data_source_impl.dart';

void main() {
  runApp(const ImageSearchApp());
}

class ImageSearchApp extends StatelessWidget {
  const ImageSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PixabayImageViewModel(
        GetPixabayImagesUseCaseImpl(
          PixabayImageRepositoryImpl(
            PixabayImageDataSourceImpl(),
          ),
        ),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '이미지 검색 앱',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: const ImageSearchScreen(),
      ),
    );
  }
}
