import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:equatable/equatable.dart';

class ForecastListValuesEntity extends Equatable{
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

  @override
  List<Object?> get props => [time, weatherCode, temperatureMin, temperatureMax];
}