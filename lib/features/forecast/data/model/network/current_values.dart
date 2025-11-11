
import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:awesome_weather/features/forecast/domain/entity/current_values_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_values.freezed.dart';
part 'current_values.g.dart';

@freezed
sealed class CurrentValues with _$CurrentValues {
  const CurrentValues._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentValues({
    required DateTime time,
    @JsonKey(name: "temperature_2m")
    required double temperature2m,
    required double rain,
    required WeatherCode weatherCode,
    required double cloudCover,
    @JsonKey(name: "wind_speed_10m")
    required double windSpeed10m
  }) = _CurrentValues;

  factory CurrentValues.fromJson(Map<String, dynamic> json) => _$CurrentValuesFromJson(json);

  CurrentValuesEntity toEntity() => CurrentValuesEntity(
      weatherCode: weatherCode,
      time: time,
      cloudCover: cloudCover,
      rain: rain,
      temperature2m: temperature2m,
      windSpeed10m: windSpeed10m
    );
}