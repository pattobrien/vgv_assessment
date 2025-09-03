// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchState {

// required List<SavedFile> allFiles,
 SavedFile get thisCoffee; bool get isMatched;
/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchStateCopyWith<MatchState> get copyWith => _$MatchStateCopyWithImpl<MatchState>(this as MatchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchState&&(identical(other.thisCoffee, thisCoffee) || other.thisCoffee == thisCoffee)&&(identical(other.isMatched, isMatched) || other.isMatched == isMatched));
}


@override
int get hashCode => Object.hash(runtimeType,thisCoffee,isMatched);

@override
String toString() {
  return 'MatchState(thisCoffee: $thisCoffee, isMatched: $isMatched)';
}


}

/// @nodoc
abstract mixin class $MatchStateCopyWith<$Res>  {
  factory $MatchStateCopyWith(MatchState value, $Res Function(MatchState) _then) = _$MatchStateCopyWithImpl;
@useResult
$Res call({
 SavedFile thisCoffee, bool isMatched
});




}
/// @nodoc
class _$MatchStateCopyWithImpl<$Res>
    implements $MatchStateCopyWith<$Res> {
  _$MatchStateCopyWithImpl(this._self, this._then);

  final MatchState _self;
  final $Res Function(MatchState) _then;

/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? thisCoffee = null,Object? isMatched = null,}) {
  return _then(_self.copyWith(
thisCoffee: null == thisCoffee ? _self.thisCoffee : thisCoffee // ignore: cast_nullable_to_non_nullable
as SavedFile,isMatched: null == isMatched ? _self.isMatched : isMatched // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchState].
extension MatchStatePatterns on MatchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchState value)  $default,){
final _that = this;
switch (_that) {
case _MatchState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SavedFile thisCoffee,  bool isMatched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that.thisCoffee,_that.isMatched);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SavedFile thisCoffee,  bool isMatched)  $default,) {final _that = this;
switch (_that) {
case _MatchState():
return $default(_that.thisCoffee,_that.isMatched);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SavedFile thisCoffee,  bool isMatched)?  $default,) {final _that = this;
switch (_that) {
case _MatchState() when $default != null:
return $default(_that.thisCoffee,_that.isMatched);case _:
  return null;

}
}

}

/// @nodoc


class _MatchState extends MatchState {
  const _MatchState({required this.thisCoffee, required this.isMatched}): super._();
  

// required List<SavedFile> allFiles,
@override final  SavedFile thisCoffee;
@override final  bool isMatched;

/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchStateCopyWith<_MatchState> get copyWith => __$MatchStateCopyWithImpl<_MatchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchState&&(identical(other.thisCoffee, thisCoffee) || other.thisCoffee == thisCoffee)&&(identical(other.isMatched, isMatched) || other.isMatched == isMatched));
}


@override
int get hashCode => Object.hash(runtimeType,thisCoffee,isMatched);

@override
String toString() {
  return 'MatchState(thisCoffee: $thisCoffee, isMatched: $isMatched)';
}


}

/// @nodoc
abstract mixin class _$MatchStateCopyWith<$Res> implements $MatchStateCopyWith<$Res> {
  factory _$MatchStateCopyWith(_MatchState value, $Res Function(_MatchState) _then) = __$MatchStateCopyWithImpl;
@override @useResult
$Res call({
 SavedFile thisCoffee, bool isMatched
});




}
/// @nodoc
class __$MatchStateCopyWithImpl<$Res>
    implements _$MatchStateCopyWith<$Res> {
  __$MatchStateCopyWithImpl(this._self, this._then);

  final _MatchState _self;
  final $Res Function(_MatchState) _then;

/// Create a copy of MatchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? thisCoffee = null,Object? isMatched = null,}) {
  return _then(_MatchState(
thisCoffee: null == thisCoffee ? _self.thisCoffee : thisCoffee // ignore: cast_nullable_to_non_nullable
as SavedFile,isMatched: null == isMatched ? _self.isMatched : isMatched // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
