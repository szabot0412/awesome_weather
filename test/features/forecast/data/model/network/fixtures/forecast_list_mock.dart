
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list.dart';

final mockForecastListMap ={
  "latitude": 54.34,
  "longitude": 12.45,
  "current": {
    "time": "2025-11-10T17:00",
    "temperature_2m": 12,
    "rain": 10,
    "weather_code": 0,
    "cloud_cover": 32,
    "wind_speed_10m": 3.4
  },
  "daily": {
    "time": [
      "2025-11-10T16:00",
      "2025-11-10T17:00",
      "2025-11-10T18:00"
    ],
    "weather_code": [
      0,
      1,
      2
    ],
    "temperature_2m_max":[
      10,
      15,
      20
    ],
    "temperature_2m_min": [
      3,
      5,
      -6
    ]
  }
};

final mockForecastList = ForecastList.fromJson(mockForecastListMap);