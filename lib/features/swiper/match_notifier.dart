import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;

import '../../services/coffee_api/coffee_api.dart';
import '../../services/file_cache/file_cache.dart';
import '../../services/file_cache/saved_file.dart';
import 'match_state.dart';

final matchNotifierProvider =
    AsyncNotifierProvider.family<MatchNotifier, MatchState, int>(
      MatchNotifier.new,
    );

class MatchNotifier extends FamilyAsyncNotifier<MatchState, int> {
  MatchNotifier();

  FileCache get fileCache => ref.read(fileCacheProvider);
  CoffeeApi get coffeeApi => ref.read(coffeeApiProvider);

  @override
  Future<MatchState> build(int index) async {
    // final cachedFiles = await ref.watch(cachedFilesProvider.future);
    final response = await coffeeApi.getRandom();
    final filename = path.basename(response.file.toString());
    // final appDir = await getApplicationDocumentsDirectory();
    final imageBytes = await Dio()
        .getUri<Uint8List>(
          response.file,
          options: Options(responseType: ResponseType.bytes),
        )
        .then((value) => value.data);
    final thisCoffee = SavedFile(
      filename: filename,
      imageBytes: imageBytes!,
    );
    final allFiles = await fileCache.getFiles();
    print('# of files: ${allFiles.length}');
    print('first file: ${allFiles.first.filename}');
    print('this file: $filename');
    final isMatched = allFiles.any((file) => file.filename == filename);
    print('isMatched: $isMatched');
    return MatchState(thisCoffee: thisCoffee, isMatched: isMatched);
  }

  Future<void> saveCoffee() async {
    if (state is! AsyncData<MatchState>) {
      throw StateError('Expected AsyncData<MatchState>');
    }
    // TODO(pattobrien): decide if we should throw a warning/error to the user
    // if they try to save a coffee that is already saved
    final matchState = state.value!;
    final thisCoffee = matchState.thisCoffee;

    await fileCache.saveFile(thisCoffee);
    ref.refresh(cachedFilesProvider);
  }

  Future<void> deleteCoffee() async {
    if (state is! AsyncData<MatchState>) {
      throw StateError('Expected AsyncData<MatchState>');
    }
    final matchState = state.value!;
    final thisCoffee = matchState.thisCoffee;
    await fileCache.deleteFile(thisCoffee.filename);
    ref.refresh(cachedFilesProvider);
  }
}
