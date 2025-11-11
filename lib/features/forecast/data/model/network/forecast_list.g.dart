// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastList _$ForecastListFromJson(Map<String, dynamic> json) =>
    _ForecastList(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      current: CurrentValues.fromJson(json['current'] as Map<String, dynamic>),
      daily: ForecastListValues.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastListToJson(_ForecastList instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current': instance.current,
      'daily': instance.daily,
    };
