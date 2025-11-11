import 'package:awesome_weather/features/forecast/data/model/network/forecast_list.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetForecastList{
  final ForecastRepository _forecastRepository;

  GetForecastList(this._forecastRepository);

  Future<ForecastListEntity> call({required double latitude, required double longitude}) async {
    ForecastList forecastList = await _forecastRepository.getForecastList(latitude: latitude, longitude: longitude);

    List<ForecastListValuesEntity> listValues = [];

    for(int i=0; i<forecastList.daily.time.length; i++){
      listValues.add( ForecastListValuesEntity(
        time: forecastList.daily.time[i],
        weatherCode: forecastList.daily.weatherCode[i],
        temperatureMax: forecastList.daily.temperature2mMax[i],
        temperatureMin: forecastList.daily.temperature2mMin[i])
      );
    }

    return ForecastListEntity(
        latitude: forecastList.latitude,
        longitude: forecastList.longitude,
        current: forecastList.current,
        daily: listValues);
  }
}