import 'package:riverpod/riverpod.dart';

import '../../services/coffee_api/coffee_api.dart';
import '../../services/coffee_api/random_response.dart';

final coffeeApiProvider = Provider<CoffeeApi>((ref) {
  return CoffeeApi();
});

final coffeeProvider = FutureProvider.family.autoDispose<RandomResponse, int>((
  ref,
  index,
) {
  final coffeeApi = ref.watch(coffeeApiProvider);
  return coffeeApi.getRandom();
});
