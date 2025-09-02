// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RandomResponse {

 String get file;
/// Create a copy of RandomResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RandomResponseCopyWith<RandomResponse> get copyWith => _$RandomResponseCopyWithImpl<RandomResponse>(this as RandomResponse, _$identity);

  /// Serializes this RandomResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RandomResponse&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'RandomResponse(file: $file)';
}


}

/// @nodoc
abstract mixin class $RandomResponseCopyWith<$Res>  {
  factory $RandomResponseCopyWith(RandomResponse value, $Res Function(RandomResponse) _then) = _$RandomResponseCopyWithImpl;
@useResult
$Res call({
 String file
});




}
/// @nodoc
class _$RandomResponseCopyWithImpl<$Res>
    implements $RandomResponseCopyWith<$Res> {
  _$RandomResponseCopyWithImpl(this._self, this._then);

  final RandomResponse _self;
  final $Res Function(RandomResponse) _then;

/// Create a copy of RandomResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = null,}) {
  return _then(_self.copyWith(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RandomResponse].
extension RandomResponsePatterns on RandomResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RandomResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RandomResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RandomResponse value)  $default,){
final _that = this;
switch (_that) {
case _RandomResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RandomResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RandomResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String file)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RandomResponse() when $default != null:
return $default(_that.file);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String file)  $default,) {final _that = this;
switch (_that) {
case _RandomResponse():
return $default(_that.file);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String file)?  $default,) {final _that = this;
switch (_that) {
case _RandomResponse() when $default != null:
return $default(_that.file);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RandomResponse extends RandomResponse {
  const _RandomResponse({required this.file}): super._();
  factory _RandomResponse.fromJson(Map<String, dynamic> json) => _$RandomResponseFromJson(json);

@override final  String file;

/// Create a copy of RandomResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RandomResponseCopyWith<_RandomResponse> get copyWith => __$RandomResponseCopyWithImpl<_RandomResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RandomResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RandomResponse&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'RandomResponse(file: $file)';
}


}

/// @nodoc
abstract mixin class _$RandomResponseCopyWith<$Res> implements $RandomResponseCopyWith<$Res> {
  factory _$RandomResponseCopyWith(_RandomResponse value, $Res Function(_RandomResponse) _then) = __$RandomResponseCopyWithImpl;
@override @useResult
$Res call({
 String file
});




}
/// @nodoc
class __$RandomResponseCopyWithImpl<$Res>
    implements _$RandomResponseCopyWith<$Res> {
  __$RandomResponseCopyWithImpl(this._self, this._then);

  final _RandomResponse _self;
  final $Res Function(_RandomResponse) _then;

/// Create a copy of RandomResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_RandomResponse(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
