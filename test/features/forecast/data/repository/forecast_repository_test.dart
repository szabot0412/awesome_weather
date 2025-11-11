
import 'package:awesome_weather/features/forecast/data/datasource/local_forecast_datasource.dart';
import 'package:awesome_weather/features/forecast/data/datasource/network_forecast_datasource.dart';
import 'package:awesome_weather/features/forecast/data/model/network/forecast_list.dart';
import 'package:awesome_weather/features/forecast/data/repository/forecast_repository_impl.dart';
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../model/network/fixtures/forecast_list_mock.dart';
import 'forecast_repository_test.mocks.dart';

@GenerateMocks([NetworkForecastDatasource,LocalForecastDatasource])
void main() {
  group(ForecastRepository, () {
    double latitude = 52.52;
    double longitude = 13.41;
    MockNetworkForecastDatasource mockNetworkForecastDatasource = MockNetworkForecastDatasource();
    MockLocalForecastDatasource mockLocalForecastDatasource = MockLocalForecastDatasource();
    late ForecastRepository repository;

    setUp(() {
      repository = ForecastRepositoryImpl(mockNetworkForecastDatasource, mockLocalForecastDatasource);
    });

    test('valid data from network source', () async {

      when(mockNetworkForecastDatasource
          .getForecastList(latitude: latitude, longitude: longitude))
          .thenAnswer((inv) async => Future.value(mockForecastListMap)
      );
      when(mockLocalForecastDatasource
          .getCachedData(path: anyNamed("path"), latitude: latitude, longitude: longitude))
          .thenAnswer((inv) => null
      );

      ForecastList forecastList = await repository.getForecastList(latitude: latitude, longitude: longitude);

      verify(mockNetworkForecastDatasource.getForecastList(latitude: latitude, longitude: longitude)).called(1);
      expect(forecastList, equals(mockForecastList));
    });

    test('error from network source, no cache', () async {

      when(mockNetworkForecastDatasource
          .getForecastList(latitude: latitude, longitude: longitude))
          .thenThrow(DioException(requestOptions: RequestOptions())
      );
      when(mockLocalForecastDatasource
          .getCachedData(path: anyNamed("path"), latitude: latitude, longitude: longitude))
          .thenAnswer((inv) => null
      );

      expect(() => repository.getForecastList(latitude: latitude, longitude: longitude), throwsA(isA<DioException>()));
      verify(mockNetworkForecastDatasource.getForecastList(latitude: latitude, longitude: longitude)).called(1);
      verify(mockLocalForecastDatasource.getCachedData(path: anyNamed("path"), latitude: latitude, longitude: longitude)).called(1);
    });

    test('error from network source, valid data from cache', () async {

      when(mockNetworkForecastDatasource
          .getForecastList(latitude: latitude, longitude: longitude))
          .thenThrow(DioException(requestOptions: RequestOptions())
      );
      when(mockLocalForecastDatasource
          .getCachedData(path: anyNamed("path"), latitude: latitude, longitude: longitude))
          .thenAnswer((inv) => mockForecastListMap
      );

      ForecastList forecastList = await repository.getForecastList(latitude: latitude, longitude: longitude);
      verify(mockNetworkForecastDatasource.getForecastList(latitude: latitude, longitude: longitude)).called(1);
      verify(mockLocalForecastDatasource.getCachedData(path: anyNamed("path"), latitude: latitude, longitude: longitude)).called(1);
      expect(forecastList, mockForecastList);
    });

  });
}