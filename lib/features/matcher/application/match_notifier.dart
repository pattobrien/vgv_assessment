import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;

import '../../../services/coffee_api/coffee_api.dart';
import '../../../services/file_cache/coffee_file.dart';
import '../../../services/file_cache/file_cache.dart';
import '../../../services/file_cache/file_cache_providers.dart';
import 'match_state.dart';

class MatchNotifier extends AutoDisposeFamilyAsyncNotifier<MatchState, int> {
  MatchNotifier();

  FileCache get fileCache => ref.read(fileCacheProvider);
  CoffeeApi get coffeeApi => ref.read(coffeeApiProvider);

  @override
  Future<MatchState> build(int index) async {
    final response = await coffeeApi.getRandom();
    final coffeeFile = await _getCoffeeFile(response.file);
    final isMatched = (await fileCache.getFile(coffeeFile.filename)) != null;
    return MatchState(thisCoffee: coffeeFile, isMatched: isMatched);
  }

  Future<CoffeeFile> _getCoffeeFile(Uri imageUrl) async {
    final imageData = await coffeeApi.getImage(imageUrl);
    final filename = path.basename(imageUrl.toString());
    return CoffeeFile(filename: filename, imageBytes: imageData);
  }

  /// Match with this coffee.
  Future<void> swipeRight() async {
    if (state is! AsyncData<MatchState>) {
      return;
    }
    // TODO(pattobrien): decide if we should throw a warning/error to the user
    // if they try to save a coffee that is already saved
    final matchState = state.value!;
    final thisCoffee = matchState.thisCoffee;

    await fileCache.saveFile(thisCoffee);
    ref.invalidate(cachedFilesProvider);
  }

  /// Don't match with this coffee.
  Future<void> swipeLeft() async {
    if (state is! AsyncData<MatchState>) {
      return;
    }
    final matchState = state.value!;
    final thisCoffee = matchState.thisCoffee;
    await fileCache.deleteFile(thisCoffee.filename, ignoreNotFound: true);
    ref.invalidate(cachedFilesProvider);
  }
}

final matchNotifierProvider = AsyncNotifierProvider.family
    .autoDispose<MatchNotifier, MatchState, int>(
      MatchNotifier.new,
    );
