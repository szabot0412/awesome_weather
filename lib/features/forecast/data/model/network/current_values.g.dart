// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentValues _$CurrentValuesFromJson(Map<String, dynamic> json) =>
    _CurrentValues(
      time: DateTime.parse(json['time'] as String),
      temperature2m: (json['temperature_2m'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
      weatherCode: $enumDecode(_$WeatherCodeEnumMap, json['weather_code']),
      cloudCover: (json['cloud_cover'] as num).toDouble(),
      windSpeed10m: (json['wind_speed_10m'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentValuesToJson(_CurrentValues instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'temperature_2m': instance.temperature2m,
      'rain': instance.rain,
      'weather_code': _$WeatherCodeEnumMap[instance.weatherCode]!,
      'cloud_cover': instance.cloudCover,
      'wind_speed_10m': instance.windSpeed10m,
    };

const _$WeatherCodeEnumMap = {
  WeatherCode.clearSky: 0,
  WeatherCode.mainlyClear: 1,
  WeatherCode.partlyCloudy: 2,
  WeatherCode.overcast: 3,
  WeatherCode.fog: 45,
  WeatherCode.depositingRimeFog: 48,
  WeatherCode.drizzleLight: 51,
  WeatherCode.drizzleModerate: 53,
  WeatherCode.drizzleDense: 55,
  WeatherCode.freezingDrizzleLight: 56,
  WeatherCode.freezingDrizzleDense: 57,
  WeatherCode.rainSlight: 61,
  WeatherCode.rainModerate: 63,
  WeatherCode.rainHeavy: 65,
  WeatherCode.freezingRainLight: 66,
  WeatherCode.freezingRainHeavy: 67,
  WeatherCode.snowFallSlight: 71,
  WeatherCode.snowFallModerate: 73,
  WeatherCode.snowFallHeavy: 75,
  WeatherCode.snowGrains: 77,
  WeatherCode.rainShowersSlight: 80,
  WeatherCode.rainShowersModerate: 81,
  WeatherCode.rainShowersViolent: 82,
  WeatherCode.snowShowersSlight: 85,
  WeatherCode.snowShowersHeavy: 86,
  WeatherCode.thunderstormSlightOrModerate: 95,
  WeatherCode.thunderstormWithSlightHail: 96,
  WeatherCode.thunderstormWithHeavyHail: 99,
};
