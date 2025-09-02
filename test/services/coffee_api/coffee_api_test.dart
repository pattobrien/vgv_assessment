import 'package:checks/checks.dart';
import 'package:test/test.dart';
import 'package:vgv_assessment/services/coffee_api/coffee_api.dart';

void main() {
  final coffeeApi = CoffeeApi();
  test('coffee api returns a file', () async {
    expect(
      coffeeApi.getRandom,
      returnsNormally,
    );

    final randomResponse = await coffeeApi.getRandom();
    check(randomResponse.file).isA<String>();
  });
}
