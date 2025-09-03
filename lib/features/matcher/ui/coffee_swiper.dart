import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/match_notifier.dart';
import 'coffee_card.dart';

class CoffeeSwiper extends ConsumerWidget {
  const CoffeeSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CardSwiper(
      cardsCount: 20,
      numberOfCardsDisplayed: 1,
      onSwipe: (previousIndex, currentIndex, direction) async {
        switch (direction) {
          case CardSwiperDirection.left:
            final notifier = ref.watch(
              matchNotifierProvider(previousIndex).notifier,
            );
            await notifier.swipeLeft();
            return true;
          case CardSwiperDirection.right:
            if (currentIndex == null) {
              return false;
            }
            final notifier = ref.watch(
              matchNotifierProvider(currentIndex).notifier,
            );
            await notifier.swipeRight();

            return true;
          case CardSwiperDirection.none:
          case CardSwiperDirection.top:
          case CardSwiperDirection.bottom:
            return true;
        }
      },
      cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
        final coffee = ref.watch(matchNotifierProvider(index));

        return coffee.when(
          data: (data) => CoffeeCard(
            coffeeFile: data.thisCoffee,
            isMatched: data.isMatched,
          ),
          error: (error, stackTrace) => ErrorCard(
            error: error.toString(),
          ),
          loading: () => const LoadingCard(),
        );
      },
    );
  }
}
