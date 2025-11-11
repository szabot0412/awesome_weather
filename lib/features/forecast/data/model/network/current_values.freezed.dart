// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentValues {

 DateTime get time;@JsonKey(name: "temperature_2m") double get temperature2m; double get rain; WeatherCode get weatherCode; double get cloudCover;@JsonKey(name: "wind_speed_10m") double get windSpeed10m;
/// Create a copy of CurrentValues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentValuesCopyWith<CurrentValues> get copyWith => _$CurrentValuesCopyWithImpl<CurrentValues>(this as CurrentValues, _$identity);

  /// Serializes this CurrentValues to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentValues&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature2m, temperature2m) || other.temperature2m == temperature2m)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode)&&(identical(other.cloudCover, cloudCover) || other.cloudCover == cloudCover)&&(identical(other.windSpeed10m, windSpeed10m) || other.windSpeed10m == windSpeed10m));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,temperature2m,rain,weatherCode,cloudCover,windSpeed10m);

@override
String toString() {
  return 'CurrentValues(time: $time, temperature2m: $temperature2m, rain: $rain, weatherCode: $weatherCode, cloudCover: $cloudCover, windSpeed10m: $windSpeed10m)';
}


}

/// @nodoc
abstract mixin class $CurrentValuesCopyWith<$Res>  {
  factory $CurrentValuesCopyWith(CurrentValues value, $Res Function(CurrentValues) _then) = _$CurrentValuesCopyWithImpl;
@useResult
$Res call({
 DateTime time,@JsonKey(name: "temperature_2m") double temperature2m, double rain, WeatherCode weatherCode, double cloudCover,@JsonKey(name: "wind_speed_10m") double windSpeed10m
});




}
/// @nodoc
class _$CurrentValuesCopyWithImpl<$Res>
    implements $CurrentValuesCopyWith<$Res> {
  _$CurrentValuesCopyWithImpl(this._self, this._then);

  final CurrentValues _self;
  final $Res Function(CurrentValues) _then;

/// Create a copy of CurrentValues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature2m = null,Object? rain = null,Object? weatherCode = null,Object? cloudCover = null,Object? windSpeed10m = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as WeatherCode,cloudCover: null == cloudCover ? _self.cloudCover : cloudCover // ignore: cast_nullable_to_non_nullable
as double,windSpeed10m: null == windSpeed10m ? _self.windSpeed10m : windSpeed10m // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentValues].
extension CurrentValuesPatterns on CurrentValues {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentValues value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentValues() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentValues value)  $default,){
final _that = this;
switch (_that) {
case _CurrentValues():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentValues value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentValues() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime time, @JsonKey(name: "temperature_2m")  double temperature2m,  double rain,  WeatherCode weatherCode,  double cloudCover, @JsonKey(name: "wind_speed_10m")  double windSpeed10m)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentValues() when $default != null:
return $default(_that.time,_that.temperature2m,_that.rain,_that.weatherCode,_that.cloudCover,_that.windSpeed10m);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime time, @JsonKey(name: "temperature_2m")  double temperature2m,  double rain,  WeatherCode weatherCode,  double cloudCover, @JsonKey(name: "wind_speed_10m")  double windSpeed10m)  $default,) {final _that = this;
switch (_that) {
case _CurrentValues():
return $default(_that.time,_that.temperature2m,_that.rain,_that.weatherCode,_that.cloudCover,_that.windSpeed10m);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime time, @JsonKey(name: "temperature_2m")  double temperature2m,  double rain,  WeatherCode weatherCode,  double cloudCover, @JsonKey(name: "wind_speed_10m")  double windSpeed10m)?  $default,) {final _that = this;
switch (_that) {
case _CurrentValues() when $default != null:
return $default(_that.time,_that.temperature2m,_that.rain,_that.weatherCode,_that.cloudCover,_that.windSpeed10m);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CurrentValues implements CurrentValues {
  const _CurrentValues({required this.time, @JsonKey(name: "temperature_2m") required this.temperature2m, required this.rain, required this.weatherCode, required this.cloudCover, @JsonKey(name: "wind_speed_10m") required this.windSpeed10m});
  factory _CurrentValues.fromJson(Map<String, dynamic> json) => _$CurrentValuesFromJson(json);

@override final  DateTime time;
@override@JsonKey(name: "temperature_2m") final  double temperature2m;
@override final  double rain;
@override final  WeatherCode weatherCode;
@override final  double cloudCover;
@override@JsonKey(name: "wind_speed_10m") final  double windSpeed10m;

/// Create a copy of CurrentValues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentValuesCopyWith<_CurrentValues> get copyWith => __$CurrentValuesCopyWithImpl<_CurrentValues>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentValuesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentValues&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature2m, temperature2m) || other.temperature2m == temperature2m)&&(identical(other.rain, rain) || other.rain == rain)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode)&&(identical(other.cloudCover, cloudCover) || other.cloudCover == cloudCover)&&(identical(other.windSpeed10m, windSpeed10m) || other.windSpeed10m == windSpeed10m));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,temperature2m,rain,weatherCode,cloudCover,windSpeed10m);

@override
String toString() {
  return 'CurrentValues(time: $time, temperature2m: $temperature2m, rain: $rain, weatherCode: $weatherCode, cloudCover: $cloudCover, windSpeed10m: $windSpeed10m)';
}


}

/// @nodoc
abstract mixin class _$CurrentValuesCopyWith<$Res> implements $CurrentValuesCopyWith<$Res> {
  factory _$CurrentValuesCopyWith(_CurrentValues value, $Res Function(_CurrentValues) _then) = __$CurrentValuesCopyWithImpl;
@override @useResult
$Res call({
 DateTime time,@JsonKey(name: "temperature_2m") double temperature2m, double rain, WeatherCode weatherCode, double cloudCover,@JsonKey(name: "wind_speed_10m") double windSpeed10m
});




}
/// @nodoc
class __$CurrentValuesCopyWithImpl<$Res>
    implements _$CurrentValuesCopyWith<$Res> {
  __$CurrentValuesCopyWithImpl(this._self, this._then);

  final _CurrentValues _self;
  final $Res Function(_CurrentValues) _then;

/// Create a copy of CurrentValues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature2m = null,Object? rain = null,Object? weatherCode = null,Object? cloudCover = null,Object? windSpeed10m = null,}) {
  return _then(_CurrentValues(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as WeatherCode,cloudCover: null == cloudCover ? _self.cloudCover : cloudCover // ignore: cast_nullable_to_non_nullable
as double,windSpeed10m: null == windSpeed10m ? _self.windSpeed10m : windSpeed10m // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
