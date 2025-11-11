import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list_values.dart';

final ForecastListValues mockForecastListValues = ForecastListValues(
    time: [
      DateTime(2025,11,11,12,00),
      DateTime(2025,11,11,13,00),
      DateTime(2025,11,11,14,00)
    ],
    weatherCode: [
      WeatherCode.fog,
      WeatherCode.clearSky,
      WeatherCode.drizzleDense
    ],
    temperature2mMax:[
      10,
      15,
      20
    ],
    temperature2mMin: [
      3,
      5,
      -6
    ]
);