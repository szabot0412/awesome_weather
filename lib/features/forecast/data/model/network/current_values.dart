
import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_values.freezed.dart';
part 'current_values.g.dart';

@freezed
sealed class CurrentValues with _$CurrentValues {
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
}