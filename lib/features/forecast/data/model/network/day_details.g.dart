// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DayDetails _$DayDetailsFromJson(Map<String, dynamic> json) => _DayDetails(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  hourly: DayDetailValues.fromJson(json['hourly'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DayDetailsToJson(_DayDetails instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'hourly': instance.hourly,
    };
