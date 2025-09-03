import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_response.freezed.dart';
part 'random_response.g.dart';

/// {@template random_response}
/// Response object for `/random.json` endpoint.
/// {@endtemplate}
@freezed
sealed class RandomResponse with _$RandomResponse {
  /// {@macro random_response}
  const factory RandomResponse({
    required Uri file,
  }) = _RandomResponse;

  const RandomResponse._();

  factory RandomResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomResponseFromJson(json);
}
