// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastList {

 double get latitude; double get longitude; CurrentValues get current; ForecastListValues get daily;
/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastListCopyWith<ForecastList> get copyWith => _$ForecastListCopyWithImpl<ForecastList>(this as ForecastList, _$identity);

  /// Serializes this ForecastList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastList&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.current, current) || other.current == current)&&(identical(other.daily, daily) || other.daily == daily));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,current,daily);

@override
String toString() {
  return 'ForecastList(latitude: $latitude, longitude: $longitude, current: $current, daily: $daily)';
}


}

/// @nodoc
abstract mixin class $ForecastListCopyWith<$Res>  {
  factory $ForecastListCopyWith(ForecastList value, $Res Function(ForecastList) _then) = _$ForecastListCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, CurrentValues current, ForecastListValues daily
});


$CurrentValuesCopyWith<$Res> get current;$ForecastListValuesCopyWith<$Res> get daily;

}
/// @nodoc
class _$ForecastListCopyWithImpl<$Res>
    implements $ForecastListCopyWith<$Res> {
  _$ForecastListCopyWithImpl(this._self, this._then);

  final ForecastList _self;
  final $Res Function(ForecastList) _then;

/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? current = null,Object? daily = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as CurrentValues,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as ForecastListValues,
  ));
}
/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentValuesCopyWith<$Res> get current {
  
  return $CurrentValuesCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastListValuesCopyWith<$Res> get daily {
  
  return $ForecastListValuesCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForecastList].
extension ForecastListPatterns on ForecastList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastList value)  $default,){
final _that = this;
switch (_that) {
case _ForecastList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastList value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  CurrentValues current,  ForecastListValues daily)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastList() when $default != null:
return $default(_that.latitude,_that.longitude,_that.current,_that.daily);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  CurrentValues current,  ForecastListValues daily)  $default,) {final _that = this;
switch (_that) {
case _ForecastList():
return $default(_that.latitude,_that.longitude,_that.current,_that.daily);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  CurrentValues current,  ForecastListValues daily)?  $default,) {final _that = this;
switch (_that) {
case _ForecastList() when $default != null:
return $default(_that.latitude,_that.longitude,_that.current,_that.daily);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ForecastList implements ForecastList {
  const _ForecastList({required this.latitude, required this.longitude, required this.current, required this.daily});
  factory _ForecastList.fromJson(Map<String, dynamic> json) => _$ForecastListFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  CurrentValues current;
@override final  ForecastListValues daily;

/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastListCopyWith<_ForecastList> get copyWith => __$ForecastListCopyWithImpl<_ForecastList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastList&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.current, current) || other.current == current)&&(identical(other.daily, daily) || other.daily == daily));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,current,daily);

@override
String toString() {
  return 'ForecastList(latitude: $latitude, longitude: $longitude, current: $current, daily: $daily)';
}


}

/// @nodoc
abstract mixin class _$ForecastListCopyWith<$Res> implements $ForecastListCopyWith<$Res> {
  factory _$ForecastListCopyWith(_ForecastList value, $Res Function(_ForecastList) _then) = __$ForecastListCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, CurrentValues current, ForecastListValues daily
});


@override $CurrentValuesCopyWith<$Res> get current;@override $ForecastListValuesCopyWith<$Res> get daily;

}
/// @nodoc
class __$ForecastListCopyWithImpl<$Res>
    implements _$ForecastListCopyWith<$Res> {
  __$ForecastListCopyWithImpl(this._self, this._then);

  final _ForecastList _self;
  final $Res Function(_ForecastList) _then;

/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? current = null,Object? daily = null,}) {
  return _then(_ForecastList(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as CurrentValues,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as ForecastListValues,
  ));
}

/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentValuesCopyWith<$Res> get current {
  
  return $CurrentValuesCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}/// Create a copy of ForecastList
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastListValuesCopyWith<$Res> get daily {
  
  return $ForecastListValuesCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}
}

// dart format on
