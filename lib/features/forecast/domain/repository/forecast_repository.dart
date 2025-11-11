
import 'package:awesome_weather/features/forecast/data/model/network/day_details.dart';
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list.dart';

abstract class ForecastRepository{
  Future<ForecastList> getForecastList({required double latitude, required double longitude});
  Future<DayDetails> getDayForecast({required double latitude, required double longitude, required DateTime date});
}