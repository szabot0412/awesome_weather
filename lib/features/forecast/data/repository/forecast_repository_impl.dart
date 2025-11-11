
import 'package:awesome_weather/features/forecast/data/datasource/local_forecast_datasource.dart';
import 'package:awesome_weather/features/forecast/data/datasource/network_forecast_datasource.dart';
import 'package:awesome_weather/features/forecast/data/model/network/day_details.dart';
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list.dart';
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Singleton(as: ForecastRepository)
class ForecastRepositoryImpl extends ForecastRepository{
  final NetworkForecastDatasource _networkForecastDatasource;
  final LocalForecastDatasource _localForecastDatasource;

  ForecastRepositoryImpl(this._networkForecastDatasource, this._localForecastDatasource);

  @override
  Future<ForecastList> getForecastList({required double latitude, required double longitude}) async {
    final String cachePath = "forecast";
    try{
      final data = await _networkForecastDatasource.getForecastList(latitude: latitude, longitude: longitude);
      _localForecastDatasource.cacheData(path: cachePath, latitude: latitude, longitude: longitude, data: data);
      return ForecastList.fromJson(data);
    }catch(e){
      final data = _localForecastDatasource.getCachedData(path: cachePath, latitude: latitude, longitude: longitude);
      if(data != null){
        return ForecastList.fromJson(data);
      }
      rethrow;
    }
  }

  @override
  Future<DayDetails> getDayForecast({required double latitude, required double longitude, required DateTime date}) async {
    final String cachePath = "details/${DateFormat.yMMMd().format(date)}";
    try{
      final data = await _networkForecastDatasource.getDayForecast(latitude: latitude, longitude: longitude, date: date);
      _localForecastDatasource.cacheData(path: cachePath, latitude: latitude, longitude: longitude, data: data);
      return DayDetails.fromJson(data);
    }catch(e){
      final data = _localForecastDatasource.getCachedData(path: cachePath, latitude: latitude, longitude: longitude);
      if(data != null){
        return DayDetails.fromJson(data);
      }
      rethrow;
    }
  }

}