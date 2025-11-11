// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_list_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastListValues {

 List<DateTime> get time; List<WeatherCode> get weatherCode;@JsonKey(name: "temperature_2m_max") List<double> get temperature2mMax;@JsonKey(name: "temperature_2m_min") List<double> get temperature2mMin;
/// Create a copy of ForecastListValues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastListValuesCopyWith<ForecastListValues> get copyWith => _$ForecastListValuesCopyWithImpl<ForecastListValues>(this as ForecastListValues, _$identity);

  /// Serializes this ForecastListValues to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastListValues&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.weatherCode, weatherCode)&&const DeepCollectionEquality().equals(other.temperature2mMax, temperature2mMax)&&const DeepCollectionEquality().equals(other.temperature2mMin, temperature2mMin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(weatherCode),const DeepCollectionEquality().hash(temperature2mMax),const DeepCollectionEquality().hash(temperature2mMin));

@override
String toString() {
  return 'ForecastListValues(time: $time, weatherCode: $weatherCode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin)';
}


}

/// @nodoc
abstract mixin class $ForecastListValuesCopyWith<$Res>  {
  factory $ForecastListValuesCopyWith(ForecastListValues value, $Res Function(ForecastListValues) _then) = _$ForecastListValuesCopyWithImpl;
@useResult
$Res call({
 List<DateTime> time, List<WeatherCode> weatherCode,@JsonKey(name: "temperature_2m_max") List<double> temperature2mMax,@JsonKey(name: "temperature_2m_min") List<double> temperature2mMin
});




}
/// @nodoc
class _$ForecastListValuesCopyWithImpl<$Res>
    implements $ForecastListValuesCopyWith<$Res> {
  _$ForecastListValuesCopyWithImpl(this._self, this._then);

  final ForecastListValues _self;
  final $Res Function(ForecastListValues) _then;

/// Create a copy of ForecastListValues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? weatherCode = null,Object? temperature2mMax = null,Object? temperature2mMin = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<DateTime>,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as List<WeatherCode>,temperature2mMax: null == temperature2mMax ? _self.temperature2mMax : temperature2mMax // ignore: cast_nullable_to_non_nullable
as List<double>,temperature2mMin: null == temperature2mMin ? _self.temperature2mMin : temperature2mMin // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastListValues].
extension ForecastListValuesPatterns on ForecastListValues {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastListValues value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastListValues() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastListValues value)  $default,){
final _that = this;
switch (_that) {
case _ForecastListValues():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastListValues value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastListValues() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DateTime> time,  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m_max")  List<double> temperature2mMax, @JsonKey(name: "temperature_2m_min")  List<double> temperature2mMin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastListValues() when $default != null:
return $default(_that.time,_that.weatherCode,_that.temperature2mMax,_that.temperature2mMin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DateTime> time,  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m_max")  List<double> temperature2mMax, @JsonKey(name: "temperature_2m_min")  List<double> temperature2mMin)  $default,) {final _that = this;
switch (_that) {
case _ForecastListValues():
return $default(_that.time,_that.weatherCode,_that.temperature2mMax,_that.temperature2mMin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DateTime> time,  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m_max")  List<double> temperature2mMax, @JsonKey(name: "temperature_2m_min")  List<double> temperature2mMin)?  $default,) {final _that = this;
switch (_that) {
case _ForecastListValues() when $default != null:
return $default(_that.time,_that.weatherCode,_that.temperature2mMax,_that.temperature2mMin);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ForecastListValues implements ForecastListValues {
  const _ForecastListValues({required final  List<DateTime> time, required final  List<WeatherCode> weatherCode, @JsonKey(name: "temperature_2m_max") required final  List<double> temperature2mMax, @JsonKey(name: "temperature_2m_min") required final  List<double> temperature2mMin}): _time = time,_weatherCode = weatherCode,_temperature2mMax = temperature2mMax,_temperature2mMin = temperature2mMin;
  factory _ForecastListValues.fromJson(Map<String, dynamic> json) => _$ForecastListValuesFromJson(json);

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

 final  List<double> _temperature2mMax;
@override@JsonKey(name: "temperature_2m_max") List<double> get temperature2mMax {
  if (_temperature2mMax is EqualUnmodifiableListView) return _temperature2mMax;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2mMax);
}

 final  List<double> _temperature2mMin;
@override@JsonKey(name: "temperature_2m_min") List<double> get temperature2mMin {
  if (_temperature2mMin is EqualUnmodifiableListView) return _temperature2mMin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2mMin);
}


/// Create a copy of ForecastListValues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastListValuesCopyWith<_ForecastListValues> get copyWith => __$ForecastListValuesCopyWithImpl<_ForecastListValues>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastListValuesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastListValues&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._weatherCode, _weatherCode)&&const DeepCollectionEquality().equals(other._temperature2mMax, _temperature2mMax)&&const DeepCollectionEquality().equals(other._temperature2mMin, _temperature2mMin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_weatherCode),const DeepCollectionEquality().hash(_temperature2mMax),const DeepCollectionEquality().hash(_temperature2mMin));

@override
String toString() {
  return 'ForecastListValues(time: $time, weatherCode: $weatherCode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin)';
}


}

/// @nodoc
abstract mixin class _$ForecastListValuesCopyWith<$Res> implements $ForecastListValuesCopyWith<$Res> {
  factory _$ForecastListValuesCopyWith(_ForecastListValues value, $Res Function(_ForecastListValues) _then) = __$ForecastListValuesCopyWithImpl;
@override @useResult
$Res call({
 List<DateTime> time, List<WeatherCode> weatherCode,@JsonKey(name: "temperature_2m_max") List<double> temperature2mMax,@JsonKey(name: "temperature_2m_min") List<double> temperature2mMin
});




}
/// @nodoc
class __$ForecastListValuesCopyWithImpl<$Res>
    implements _$ForecastListValuesCopyWith<$Res> {
  __$ForecastListValuesCopyWithImpl(this._self, this._then);

  final _ForecastListValues _self;
  final $Res Function(_ForecastListValues) _then;

/// Create a copy of ForecastListValues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? weatherCode = null,Object? temperature2mMax = null,Object? temperature2mMin = null,}) {
  return _then(_ForecastListValues(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<DateTime>,weatherCode: null == weatherCode ? _self._weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as List<WeatherCode>,temperature2mMax: null == temperature2mMax ? _self._temperature2mMax : temperature2mMax // ignore: cast_nullable_to_non_nullable
as List<double>,temperature2mMin: null == temperature2mMin ? _self._temperature2mMin : temperature2mMin // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
