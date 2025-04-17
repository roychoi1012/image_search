import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_search/data/data_source/pixabay_image_data_source.dart';
import 'package:image_search/data/dto/pixabay_image_dto.dart';

class PixabayImageDataSourceImpl implements PixabayImageDataSource {
  final String _apiKey = '10711147-dc41758b93b263957026bdadb';

  @override
  Future<PixabayImageDto> getImages(String query) async {
    final url = Uri.parse(
        'https://pixabay.com/api/?key=$_apiKey&q=$query&image_type=photo');

    final response = await http.get(url).timeout(const Duration(seconds: 5));

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body) as Map<String, dynamic>;
      return PixabayImageDto.fromJson(jsonMap);
    } else {
      throw Exception('Pixabay API Error: ${response.statusCode}');
    }
  }
}
