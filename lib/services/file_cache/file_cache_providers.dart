import 'package:riverpod/riverpod.dart';

import 'coffee_file.dart';
import 'file_cache.dart';

final fileCacheProvider = Provider<FileCache>((ref) {
  throw UnimplementedError(
    'FileCache not implemented',
  );
});

final cachedFilesProvider = FutureProvider<List<CoffeeFile>>((ref) async {
  final fileCache = ref.watch(fileCacheProvider);
  return fileCache.getFiles();
});
