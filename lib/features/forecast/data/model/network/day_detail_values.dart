import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_detail_values.freezed.dart';
part 'day_detail_values.g.dart';

@freezed
sealed class DayDetailValues with _$DayDetailValues {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DayDetailValues({
    required List<DateTime> time,
    required List<WeatherCode> weatherCode,
    @JsonKey(name: "temperature_2m")
    required List<double> temperature2m,
    required List<double> rain,
  }) = _DayDetailValues;

  factory DayDetailValues.fromJson(Map<String, dynamic> json) => _$DayDetailValuesFromJson(json);
}