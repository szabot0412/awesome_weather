import 'package:awesome_weather/features/forecast/data/model/network/current_values.dart';
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list_values.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_list.freezed.dart';
part 'forecast_list.g.dart';

@freezed
sealed class ForecastList with _$ForecastList {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ForecastList({
    required double latitude,
    required double longitude,
    required CurrentValues current,
    required ForecastListValues daily,
  }) = _ForecastList;

  factory ForecastList.fromJson(Map<String, dynamic> json) => _$ForecastListFromJson(json);
}