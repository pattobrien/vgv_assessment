import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/match_notifier.dart';

class CoffeeSwiper extends ConsumerWidget {
  const CoffeeSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CardSwiper(
      cardsCount: 20,
      numberOfCardsDisplayed: 4,
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
          data: (data) {
            final isMatched = data.isMatched;
            return Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Image.memory(data.thisCoffee.imageBytes),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: isMatched
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 48,
                        )
                      : null,
                ),
              ],
            );
          },
          error: (error, stackTrace) => Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Text('Error: $error' + stackTrace.toString()),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
