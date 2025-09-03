import 'dart:typed_data';

class SavedFile {
  const SavedFile({
    required this.filename,
    required this.imageBytes,
  });

  final String filename;
  final Uint8List imageBytes;
}
