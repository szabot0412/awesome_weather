// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CachedData {

@HiveField(0) String get path;@HiveField(1) double get latitude;@HiveField(2) double get longitude;@HiveField(3) DateTime get date;@HiveField(4) Map<String, dynamic> get data;
/// Create a copy of CachedData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CachedDataCopyWith<CachedData> get copyWith => _$CachedDataCopyWithImpl<CachedData>(this as CachedData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CachedData&&(identical(other.path, path) || other.path == path)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,path,latitude,longitude,date,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CachedData(path: $path, latitude: $latitude, longitude: $longitude, date: $date, data: $data)';
}


}

/// @nodoc
abstract mixin class $CachedDataCopyWith<$Res>  {
  factory $CachedDataCopyWith(CachedData value, $Res Function(CachedData) _then) = _$CachedDataCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String path,@HiveField(1) double latitude,@HiveField(2) double longitude,@HiveField(3) DateTime date,@HiveField(4) Map<String, dynamic> data
});




}
/// @nodoc
class _$CachedDataCopyWithImpl<$Res>
    implements $CachedDataCopyWith<$Res> {
  _$CachedDataCopyWithImpl(this._self, this._then);

  final CachedData _self;
  final $Res Function(CachedData) _then;

/// Create a copy of CachedData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? latitude = null,Object? longitude = null,Object? date = null,Object? data = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [CachedData].
extension CachedDataPatterns on CachedData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CachedData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CachedData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CachedData value)  $default,){
final _that = this;
switch (_that) {
case _CachedData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CachedData value)?  $default,){
final _that = this;
switch (_that) {
case _CachedData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String path, @HiveField(1)  double latitude, @HiveField(2)  double longitude, @HiveField(3)  DateTime date, @HiveField(4)  Map<String, dynamic> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CachedData() when $default != null:
return $default(_that.path,_that.latitude,_that.longitude,_that.date,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String path, @HiveField(1)  double latitude, @HiveField(2)  double longitude, @HiveField(3)  DateTime date, @HiveField(4)  Map<String, dynamic> data)  $default,) {final _that = this;
switch (_that) {
case _CachedData():
return $default(_that.path,_that.latitude,_that.longitude,_that.date,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String path, @HiveField(1)  double latitude, @HiveField(2)  double longitude, @HiveField(3)  DateTime date, @HiveField(4)  Map<String, dynamic> data)?  $default,) {final _that = this;
switch (_that) {
case _CachedData() when $default != null:
return $default(_that.path,_that.latitude,_that.longitude,_that.date,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@HiveType(typeId: 0)
class _CachedData implements CachedData {
   _CachedData({@HiveField(0) required this.path, @HiveField(1) required this.latitude, @HiveField(2) required this.longitude, @HiveField(3) required this.date, @HiveField(4) required final  Map<String, dynamic> data}): _data = data;
  

@override@HiveField(0) final  String path;
@override@HiveField(1) final  double latitude;
@override@HiveField(2) final  double longitude;
@override@HiveField(3) final  DateTime date;
 final  Map<String, dynamic> _data;
@override@HiveField(4) Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of CachedData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CachedDataCopyWith<_CachedData> get copyWith => __$CachedDataCopyWithImpl<_CachedData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CachedData&&(identical(other.path, path) || other.path == path)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,path,latitude,longitude,date,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CachedData(path: $path, latitude: $latitude, longitude: $longitude, date: $date, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CachedDataCopyWith<$Res> implements $CachedDataCopyWith<$Res> {
  factory _$CachedDataCopyWith(_CachedData value, $Res Function(_CachedData) _then) = __$CachedDataCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String path,@HiveField(1) double latitude,@HiveField(2) double longitude,@HiveField(3) DateTime date,@HiveField(4) Map<String, dynamic> data
});




}
/// @nodoc
class __$CachedDataCopyWithImpl<$Res>
    implements _$CachedDataCopyWith<$Res> {
  __$CachedDataCopyWithImpl(this._self, this._then);

  final _CachedData _self;
  final $Res Function(_CachedData) _then;

/// Create a copy of CachedData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? latitude = null,Object? longitude = null,Object? date = null,Object? data = null,}) {
  return _then(_CachedData(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
