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
}
