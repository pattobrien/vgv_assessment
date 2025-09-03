import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../services/file_cache/coffee_file.dart';

part '../match_state.freezed.dart';

@freezed
sealed class MatchState with _$MatchState {
  const factory MatchState({
    // required List<SavedFile> allFiles,
    required CoffeeFile thisCoffee,
    required bool isMatched,
  }) = _MatchState;

  const MatchState._();
}
