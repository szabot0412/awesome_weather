import 'package:awesome_weather/features/forecast/domain/entity/day_details_entity.dart';
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetDayDetail{
  final ForecastRepository _forecastRepository;

  GetDayDetail(this._forecastRepository);

  Future<DayDetailsEntity> call({required double latitude, required double longitude, required DateTime date}) async {
    return await _forecastRepository.getDayForecast(latitude: latitude, longitude: longitude, date: date);
  }
}