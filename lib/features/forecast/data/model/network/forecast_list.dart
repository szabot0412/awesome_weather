import 'package:awesome_weather/features/forecast/data/model/network/current_values.dart';
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list_values.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_values_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_list.freezed.dart';
part 'forecast_list.g.dart';

@freezed
sealed class ForecastList with _$ForecastList {
  const ForecastList._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ForecastList({
    required double latitude,
    required double longitude,
    required CurrentValues current,
    required ForecastListValues daily,
  }) = _ForecastList;

  factory ForecastList.fromJson(Map<String, dynamic> json) => _$ForecastListFromJson(json);

  ForecastListEntity toEntity(){

    List<ForecastListValuesEntity> listValues = [];

    for(int i=0; i<daily.time.length; i++){
      listValues.add( ForecastListValuesEntity(
          time: daily.time[i],
          weatherCode: daily.weatherCode[i],
          temperatureMax: daily.temperature2mMax[i],
          temperatureMin: daily.temperature2mMin[i])
      );
    }

    return ForecastListEntity(
        latitude: latitude,
        longitude: longitude,
        current: current.toEntity(),
        daily: listValues);
  }
}