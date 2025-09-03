import 'dart:typed_data';

class CoffeeFile {
  const CoffeeFile({
    required this.filename,
    required this.imageBytes,
  });

  final String filename;
  final Uint8List imageBytes;
}
