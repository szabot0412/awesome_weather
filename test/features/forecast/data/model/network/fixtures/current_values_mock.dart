
import 'package:awesome_weather/features/forecast/data/model/network/current_values.dart';
import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';

final CurrentValues mockCurrentValues = CurrentValues(
    time: DateTime(2025,11,10,12,0),
    temperature2m: 12,
    rain: 10,
    weatherCode: WeatherCode.clearSky,
    cloudCover: 32,
    windSpeed10m: 3.4
);
