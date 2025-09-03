import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;

import '../../../services/coffee_api/coffee_api.dart';
import '../../../services/file_cache/file_cache.dart';
import '../../../services/file_cache/saved_file.dart';
import 'match_state.dart';

class MatchNotifier extends AutoDisposeFamilyAsyncNotifier<MatchState, int> {
  MatchNotifier();

  FileCache get fileCache => ref.read(fileCacheProvider);
  CoffeeApi get coffeeApi => ref.read(coffeeApiProvider);

  @override
  Future<MatchState> build(int index) async {
    final response = await coffeeApi.getRandom();
    final filename = path.basename(response.file.toString());

    final imageResponse = await Dio().getUri<Uint8List>(
      response.file,
      options: Options(responseType: ResponseType.bytes),
    );
    final thisCoffee = SavedFile(
      filename: filename,
      imageBytes: imageResponse.data!,
    );
    final isMatched = (await fileCache.getFile(filename)) != null;
    return MatchState(thisCoffee: thisCoffee, isMatched: isMatched);
  }

  /// Match with this coffee.
  Future<void> swipeRight() async {
    if (state is! AsyncData<MatchState>) {
      // throw StateError('Expected AsyncData<MatchState>');
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
