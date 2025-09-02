import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'coffee_provider.dart';

class CoffeeSwiper extends ConsumerWidget {
  const CoffeeSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CardSwiper(
      cardsCount: 20,
      numberOfCardsDisplayed: 2,
      cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
        final coffee = ref.watch(coffeeProvider(index));
        return coffee.when(
          data: (data) => Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Image.network(data.file),
          ),
          error: (error, stackTrace) => Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text('Error: $error'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
