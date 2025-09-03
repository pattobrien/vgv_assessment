class FileNotFoundException implements Exception {
  FileNotFoundException(this.path);

  final String path;

  @override
  String toString() {
    return 'Could not find file at $path';
  }
}
