import 'package:awesome_weather/core/network/http_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@singleton
class NetworkForecastDatasource{
  final HttpService _httpService;

  NetworkForecastDatasource(this._httpService);

  Future<Map<String, dynamic>> getForecastList({required double latitude, required double longitude}) async {
    final Response response =await _httpService.get(
      "/v1/forecast",
      queryParameters: {
        "latitude": latitude,
        "longitude": longitude,
        "daily" : "weather_code,temperature_2m_max,temperature_2m_min",
        "current" : "temperature_2m,rain,weather_code,cloud_cover,wind_speed_10m"
      }
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getDayForecast({required double latitude, required double longitude, required DateTime date}) async {
    String dateString = DateFormat("yyyy-MM-dd").format(date);
    final Response response =await _httpService.get(
        "/v1/forecast",
        queryParameters: {
          "latitude": latitude,
          "longitude": longitude,
          "start_date" : dateString,
          "end_date" : dateString,
          "hourly" : "temperature_2m,weather_code,rain"
        }
    );
    return response.data;
  }
}