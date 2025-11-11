import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetForecastList{
  final ForecastRepository _forecastRepository;

  GetForecastList(this._forecastRepository);

  Future<ForecastListEntity> call({required double latitude, required double longitude}) async {
    return await _forecastRepository.getForecastList(latitude: latitude, longitude: longitude);
  }
}