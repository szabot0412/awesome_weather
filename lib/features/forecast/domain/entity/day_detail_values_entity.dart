import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';

class DayDetailValuesEntity{
  final DateTime time;
  final WeatherCode weatherCode;
  final double temperature;
  final double rain;

  const DayDetailValuesEntity({
    required this.time,
    required this.weatherCode,
    required this.temperature,
    required this.rain,
  });
}