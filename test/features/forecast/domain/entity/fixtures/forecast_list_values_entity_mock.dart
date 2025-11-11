
import 'package:awesome_weather/features/forecast/data/model/network/enum/weather_code.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_values_entity.dart';

final ForecastListValuesEntity mockForecastListValuesEntity1 = ForecastListValuesEntity(
  temperatureMax: 10,
  temperatureMin: -2,
  time: DateTime(2025,11,10),
  weatherCode: WeatherCode.clearSky
);

final ForecastListValuesEntity mockForecastListValuesEntity2 = ForecastListValuesEntity(
    temperatureMax: 15,
    temperatureMin: 0,
    time: DateTime(2025,11,11),
    weatherCode: WeatherCode.drizzleDense
);

final ForecastListValuesEntity mockForecastListValuesEntity3 = ForecastListValuesEntity(
    temperatureMax: 16,
    temperatureMin: 6,
    time: DateTime(2025,11,12),
    weatherCode: WeatherCode.depositingRimeFog
);