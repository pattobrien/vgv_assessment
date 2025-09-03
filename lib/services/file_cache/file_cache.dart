import 'saved_file.dart';

abstract interface class FileCache {
  Future<List<SavedFile>> getFiles();
  Future<SavedFile> getFile(String filename);

  Future<void> saveFile(SavedFile savedFile);
  Future<void> deleteFile(String filename);
}
