
import 'package:awesome_weather/features/forecast/domain/entity/day_details_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';

abstract class ForecastRepository{
  Future<ForecastListEntity> getForecastList({required double latitude, required double longitude});
  Future<DayDetailsEntity> getDayForecast({required double latitude, required double longitude, required DateTime date});
}