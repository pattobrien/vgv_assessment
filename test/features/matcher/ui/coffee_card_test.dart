import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vgv_assessment/features/matcher/ui/coffee_card.dart';
import 'package:vgv_assessment/services/file_cache/coffee_file.dart';

void main() {
  group('CoffeeCard', () {
    late CoffeeFile mockSavedFile;

    setUp(() {
      // Create a minimal valid PNG image (1x1 transparent pixel)
      mockSavedFile = CoffeeFile(
        filename: 'test_coffee.jpg',
        imageBytes: Uint8List.fromList([
          0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, // PNG header
          // Minimal PNG data for a 1x1 transparent pixel
          0x00, 0x00, 0x00, 0x0D, 0x49, 0x48, 0x44, 0x52,
          0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
          0x08, 0x06, 0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4,
          0x89, 0x00, 0x00, 0x00, 0x0A, 0x49, 0x44, 0x41,
          0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00,
          0x05, 0x00, 0x01, 0x0D, 0x0A, 0x2D, 0xB4, 0x00,
          0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE,
          0x42, 0x60, 0x82,
        ]),
      );
    });

    testWidgets('shows favorite indicator ONLY when isMatched is true', (
      tester,
    ) async {
      // Test matched state
      await tester.pumpWidget(
        MaterialApp(
          home: CoffeeCard(
            coffeeFile: mockSavedFile,
            isMatched: true,
          ),
        ),
      );
      expect(find.byIcon(Icons.favorite), findsOneWidget);

      // Test unmatched state
      await tester.pumpWidget(
        MaterialApp(
          home: CoffeeCard(
            coffeeFile: mockSavedFile,
            isMatched: false,
          ),
        ),
      );
      expect(find.byIcon(Icons.favorite), findsNothing);
    });
  });
}
