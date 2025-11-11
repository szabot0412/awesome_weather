import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:equatable/equatable.dart';


class CurrentValuesEntity extends Equatable{
  final DateTime time;
  final double temperature2m;
  final double rain;
  final WeatherCode weatherCode;
  final double cloudCover;
  final double windSpeed10m;

  const CurrentValuesEntity({
    required this.time,
    required this.temperature2m,
    required this.rain,
    required this.weatherCode,
    required this.cloudCover,
    required this.windSpeed10m,
  });

  @override
  List<Object?> get props => [time, temperature2m, rain, weatherCode, cloudCover, windSpeed10m];

}