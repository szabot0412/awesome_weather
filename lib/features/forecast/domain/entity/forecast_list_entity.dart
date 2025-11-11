import 'package:awesome_weather/features/forecast/data/model/network/current_values.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';

class ForecastListEntity{
  final LocationEntity location;
  final CurrentValues current;
  final List<ForecastListValuesEntity> daily;

  ForecastListEntity({
    required double latitude,
    required double longitude,
    required this.current,
    required this.daily,
  }): location = LocationEntity(latitude: latitude, longitude: longitude);
}