import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import 'random_response.dart';

final coffeeApiProvider = Provider<CoffeeApi>((ref) {
  return CoffeeApi();
});

class CoffeeApi {
  CoffeeApi()
    : _client = Dio(
        BaseOptions(
          baseUrl: 'https://coffee.alexflipnote.dev',
        ),
      );

  final Dio _client;

  Future<RandomResponse> getRandom() async {
    final response = await _client.get<Map<String, dynamic>>('/random.json');
    return RandomResponse.fromJson(response.data!);
  }

  Future<Uint8List> getImage(Uri imageUrl) async {
    final response = await _client.getUri<Uint8List>(
      imageUrl,
      options: Options(responseType: ResponseType.bytes),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to load image: ${response.statusCode}');
    }
    return response.data!;
  }
}
