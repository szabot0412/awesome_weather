import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum/weather_code.dart';

part 'forecast_list_values.freezed.dart';
part 'forecast_list_values.g.dart';

@freezed
sealed class ForecastListValues with _$ForecastListValues {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ForecastListValues({
    required List<DateTime> time,
    required List<WeatherCode> weatherCode,
    @JsonKey(name: "temperature_2m_max")
    required List<double> temperature2mMax,
    @JsonKey(name: "temperature_2m_min")
    required List<double> temperature2mMin
  }) = _ForecastListValues;

  factory ForecastListValues.fromJson(Map<String, dynamic> json) => _$ForecastListValuesFromJson(json);
}