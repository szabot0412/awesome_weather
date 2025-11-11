import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';

class ForecastListValuesEntity{
  final DateTime time;
  final WeatherCode weatherCode;
  final double temperatureMax;
  final double temperatureMin;

  const ForecastListValuesEntity({
    required this.time,
    required this.weatherCode,
    required this.temperatureMax,
    required this.temperatureMin,
  });
}