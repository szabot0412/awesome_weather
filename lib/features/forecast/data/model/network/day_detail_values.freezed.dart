// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_detail_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DayDetailValues {

 List<DateTime> get time; List<WeatherCode> get weatherCode;@JsonKey(name: "temperature_2m") List<double> get temperature2m; List<double> get rain;
/// Create a copy of DayDetailValues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayDetailValuesCopyWith<DayDetailValues> get copyWith => _$DayDetailValuesCopyWithImpl<DayDetailValues>(this as DayDetailValues, _$identity);

  /// Serializes this DayDetailValues to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayDetailValues&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.weatherCode, weatherCode)&&const DeepCollectionEquality().equals(other.temperature2m, temperature2m)&&const DeepCollectionEquality().equals(other.rain, rain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(weatherCode),const DeepCollectionEquality().hash(temperature2m),const DeepCollectionEquality().hash(rain));

@override
String toString() {
  return 'DayDetailValues(time: $time, weatherCode: $weatherCode, temperature2m: $temperature2m, rain: $rain)';
}


}

/// @nodoc
abstract mixin class $DayDetailValuesCopyWith<$Res>  {
  factory $DayDetailValuesCopyWith(DayDetailValues value, $Res Function(DayDetailValues) _then) = _$DayDetailValuesCopyWithImpl;
@useResult
$Res call({
 List<DateTime> time, List<WeatherCode> weatherCode,@JsonKey(name: "temperature_2m") List<double> temperature2m, List<double> rain
});




}
/// @nodoc
class _$DayDetailValuesCopyWithImpl<$Res>
    implements $DayDetailValuesCopyWith<$Res> {
  _$DayDetailValuesCopyWithImpl(this._self, this._then);

  final DayDetailValues _self;
  final $Res Function(DayDetailValues) _then;

/// Create a copy of DayDetailValues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? weatherCode = null,Object? temperature2m = null,Object? rain = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<DateTime>,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as List<WeatherCode>,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as List<double>,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [DayDetailValues].
extension DayDetailValuesPatterns on DayDetailValues {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayDetailValues value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayDetailValues() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayDetailValues value)  $default,){
final _that = this;
switch (_that) {
case _DayDetailValues():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayDetailValues value)?  $default,){
final _that = this;
switch (_that) {
case _DayDetailValues() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DateTime> time,  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m")  List<double> temperature2m,  List<double> rain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayDetailValues() when $default != null:
return $default(_that.time,_that.weatherCode,_that.temperature2m,_that.rain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DateTime> time,  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m")  List<double> temperature2m,  List<double> rain)  $default,) {final _that = this;
switch (_that) {
case _DayDetailValues():
return $default(_that.time,_that.weatherCode,_that.temperature2m,_that.rain);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DateTime> time,  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m")  List<double> temperature2m,  List<double> rain)?  $default,) {final _that = this;
switch (_that) {
case _DayDetailValues() when $default != null:
return $default(_that.time,_that.weatherCode,_that.temperature2m,_that.rain);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DayDetailValues implements DayDetailValues {
  const _DayDetailValues({required final  List<DateTime> time, required final  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m") required final  List<double> temperature2m, required final  List<double> rain}): _time = time,_weatherCode = weatherCode,_temperature2m = temperature2m,_rain = rain;
  factory _DayDetailValues.fromJson(Map<String, dynamic> json) => _$DayDetailValuesFromJson(json);

 final  List<DateTime> _time;
@override List<DateTime> get time {
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_time);
}

 final  List<WeatherCode> _weatherCode;
@override List<WeatherCode> get weatherCode {
  if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherCode);
}

 final  List<double> _temperature2m;
@override@JsonKey(name: "temperature_2m") List<double> get temperature2m {
  if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2m);
}

 final  List<double> _rain;
@override List<double> get rain {
  if (_rain is EqualUnmodifiableListView) return _rain;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rain);
}


/// Create a copy of DayDetailValues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayDetailValuesCopyWith<_DayDetailValues> get copyWith => __$DayDetailValuesCopyWithImpl<_DayDetailValues>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayDetailValuesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayDetailValues&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._weatherCode, _weatherCode)&&const DeepCollectionEquality().equals(other._temperature2m, _temperature2m)&&const DeepCollectionEquality().equals(other._rain, _rain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_weatherCode),const DeepCollectionEquality().hash(_temperature2m),const DeepCollectionEquality().hash(_rain));

@override
String toString() {
  return 'DayDetailValues(time: $time, weatherCode: $weatherCode, temperature2m: $temperature2m, rain: $rain)';
}


}

/// @nodoc
abstract mixin class _$DayDetailValuesCopyWith<$Res> implements $DayDetailValuesCopyWith<$Res> {
  factory _$DayDetailValuesCopyWith(_DayDetailValues value, $Res Function(_DayDetailValues) _then) = __$DayDetailValuesCopyWithImpl;
@override @useResult
$Res call({
 List<DateTime> time, List<WeatherCode> weatherCode,@JsonKey(name: "temperature_2m") List<double> temperature2m, List<double> rain
});




}
/// @nodoc
class __$DayDetailValuesCopyWithImpl<$Res>
    implements _$DayDetailValuesCopyWith<$Res> {
  __$DayDetailValuesCopyWithImpl(this._self, this._then);

  final _DayDetailValues _self;
  final $Res Function(_DayDetailValues) _then;

/// Create a copy of DayDetailValues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? weatherCode = null,Object? temperature2m = null,Object? rain = null,}) {
  return _then(_DayDetailValues(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<DateTime>,weatherCode: null == weatherCode ? _self._weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as List<WeatherCode>,temperature2m: null == temperature2m ? _self._temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as List<double>,rain: null == rain ? _self._rain : rain // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
