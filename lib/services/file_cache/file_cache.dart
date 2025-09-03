import 'package:riverpod/riverpod.dart';

import 'saved_file.dart';

final fileCacheProvider = Provider<FileCache>((ref) {
  throw UnimplementedError(
    'FileCache not implemented',
  );
});

final cachedFilesProvider = FutureProvider<List<SavedFile>>((ref) async {
  final fileCache = ref.watch(fileCacheProvider);
  return fileCache.getFiles();
});

abstract interface class FileCache {
  Future<List<SavedFile>> getFiles();
  Future<SavedFile?> getFile(String filename);

  Future<void> saveFile(SavedFile savedFile);
  Future<void> deleteFile(String filename, {bool ignoreNotFound = false});
}
