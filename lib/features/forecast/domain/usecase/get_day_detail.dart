import 'package:awesome_weather/features/forecast/data/model/network/day_details.dart';
import 'package:awesome_weather/features/forecast/domain/entity/day_detail_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/day_details_entity.dart';
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetDayDetail{
  final ForecastRepository _forecastRepository;

  GetDayDetail(this._forecastRepository);

  Future<DayDetailEntity> call({required double latitude, required double longitude, required DateTime date}) async {
    DayDetails dayDetails = await _forecastRepository.getDayForecast(latitude: latitude, longitude: longitude, date: date);

    List<DayDetailValuesEntity> listValues = [];

    for(int i=0; i<dayDetails.hourly.time.length; i++){
      listValues.add( DayDetailValuesEntity(
          time: dayDetails.hourly.time[i],
          weatherCode: dayDetails.hourly.weatherCode[i],
          temperature: dayDetails.hourly.temperature2m[i],
          rain: dayDetails.hourly.rain[i])
      );
    }

    return DayDetailEntity(
        latitude: dayDetails.latitude,
        longitude: dayDetails.longitude,
        hourly: listValues);
  }
}