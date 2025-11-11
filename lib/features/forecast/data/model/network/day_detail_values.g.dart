// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_detail_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DayDetailValues _$DayDetailValuesFromJson(Map<String, dynamic> json) =>
    _DayDetailValues(
      time: (json['time'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => $enumDecode(_$WeatherCodeEnumMap, e))
          .toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      rain: (json['rain'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$DayDetailValuesToJson(_DayDetailValues instance) =>
    <String, dynamic>{
      'time': instance.time.map((e) => e.toIso8601String()).toList(),
      'weather_code': instance.weatherCode
          .map((e) => _$WeatherCodeEnumMap[e]!)
          .toList(),
      'temperature_2m': instance.temperature2m,
      'rain': instance.rain,
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
