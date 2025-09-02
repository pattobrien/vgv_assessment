import 'package:dio/dio.dart';

import 'random_response.dart';

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
}
