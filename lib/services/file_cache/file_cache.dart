import 'coffee_file.dart';

abstract interface class FileCache {
  Future<List<CoffeeFile>> getFiles();
  Future<CoffeeFile?> getFile(String filename);

  Future<void> saveFile(CoffeeFile savedFile);
  Future<void> deleteFile(String filename, {bool ignoreNotFound = false});
}
