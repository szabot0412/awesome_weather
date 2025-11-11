// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DayDetails {

 double get latitude; double get longitude; DayDetailValues get hourly;
/// Create a copy of DayDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayDetailsCopyWith<DayDetails> get copyWith => _$DayDetailsCopyWithImpl<DayDetails>(this as DayDetails, _$identity);

  /// Serializes this DayDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayDetails&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.hourly, hourly) || other.hourly == hourly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,hourly);

@override
String toString() {
  return 'DayDetails(latitude: $latitude, longitude: $longitude, hourly: $hourly)';
}


}

/// @nodoc
abstract mixin class $DayDetailsCopyWith<$Res>  {
  factory $DayDetailsCopyWith(DayDetails value, $Res Function(DayDetails) _then) = _$DayDetailsCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, DayDetailValues hourly
});


$DayDetailValuesCopyWith<$Res> get hourly;

}
/// @nodoc
class _$DayDetailsCopyWithImpl<$Res>
    implements $DayDetailsCopyWith<$Res> {
  _$DayDetailsCopyWithImpl(this._self, this._then);

  final DayDetails _self;
  final $Res Function(DayDetails) _then;

/// Create a copy of DayDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? hourly = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as DayDetailValues,
  ));
}
/// Create a copy of DayDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayDetailValuesCopyWith<$Res> get hourly {
  
  return $DayDetailValuesCopyWith<$Res>(_self.hourly, (value) {
    return _then(_self.copyWith(hourly: value));
  });
}
}


/// Adds pattern-matching-related methods to [DayDetails].
extension DayDetailsPatterns on DayDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayDetails value)  $default,){
final _that = this;
switch (_that) {
case _DayDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayDetails value)?  $default,){
final _that = this;
switch (_that) {
case _DayDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  DayDetailValues hourly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayDetails() when $default != null:
return $default(_that.latitude,_that.longitude,_that.hourly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  DayDetailValues hourly)  $default,) {final _that = this;
switch (_that) {
case _DayDetails():
return $default(_that.latitude,_that.longitude,_that.hourly);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  DayDetailValues hourly)?  $default,) {final _that = this;
switch (_that) {
case _DayDetails() when $default != null:
return $default(_that.latitude,_that.longitude,_that.hourly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayDetails extends DayDetails {
  const _DayDetails({required this.latitude, required this.longitude, required this.hourly}): super._();
  factory _DayDetails.fromJson(Map<String, dynamic> json) => _$DayDetailsFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  DayDetailValues hourly;

/// Create a copy of DayDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayDetailsCopyWith<_DayDetails> get copyWith => __$DayDetailsCopyWithImpl<_DayDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayDetails&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.hourly, hourly) || other.hourly == hourly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,hourly);

@override
String toString() {
  return 'DayDetails(latitude: $latitude, longitude: $longitude, hourly: $hourly)';
}


}

/// @nodoc
abstract mixin class _$DayDetailsCopyWith<$Res> implements $DayDetailsCopyWith<$Res> {
  factory _$DayDetailsCopyWith(_DayDetails value, $Res Function(_DayDetails) _then) = __$DayDetailsCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, DayDetailValues hourly
});


@override $DayDetailValuesCopyWith<$Res> get hourly;

}
/// @nodoc
class __$DayDetailsCopyWithImpl<$Res>
    implements _$DayDetailsCopyWith<$Res> {
  __$DayDetailsCopyWithImpl(this._self, this._then);

  final _DayDetails _self;
  final $Res Function(_DayDetails) _then;

/// Create a copy of DayDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? hourly = null,}) {
  return _then(_DayDetails(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as DayDetailValues,
  ));
}

/// Create a copy of DayDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayDetailValuesCopyWith<$Res> get hourly {
  
  return $DayDetailValuesCopyWith<$Res>(_self.hourly, (value) {
    return _then(_self.copyWith(hourly: value));
  });
}
}

// dart format on
