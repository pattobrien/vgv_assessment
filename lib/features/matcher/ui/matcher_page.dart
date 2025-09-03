import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'coffee_swiper.dart';

@RoutePage()
class MatcherPage extends ConsumerWidget {
  const MatcherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.brown.shade800,
              Colors.brown.shade900,
              Colors.black87,
            ],
            stops: const [0.0, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              children: [
                // Header section
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      Icon(
                        Icons.coffee,
                        size: 28,
                        color: Colors.brown.shade300,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Discover Your Perfect Coffee',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Swipe right to save favorites • Swipe left to pass',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withOpacity(0.8),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                // Coffee swiper section
                Expanded(
                  child: const CoffeeSwiper(),
                ),

                // Bottom spacing
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
