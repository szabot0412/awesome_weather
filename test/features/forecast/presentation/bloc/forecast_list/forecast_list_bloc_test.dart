import 'package:awesome_weather/features/forecast/domain/usecase/get_forecast_list.dart';
import 'package:awesome_weather/features/forecast/domain/usecase/get_location.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_bloc.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_event.dart';
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../domain/entity/fixtures/forecast_list_entity_mock.dart';
import '../../../domain/entity/fixtures/location_entity.dart';
import 'forecast_list_bloc_test.mocks.dart';

@GenerateMocks([GetForecastList,GetLocation])
void main() {
  group(ForecastListBloc, () {
    MockGetForecastList mockGetForecastList = MockGetForecastList();
    MockGetLocation mockGetLocation = MockGetLocation();
    late ForecastListBloc bloc;

    setUp(() {
      bloc = ForecastListBloc(mockGetForecastList, mockGetLocation);
    });

    test('initial state is ForecastListInitial', () {
      expect(bloc.state, isA<ForecastListInitial>());
    });


    blocTest(
      'bloc state changed to ForecastListLoaded when GetForecastListEvent',
      build: () => bloc,
      setUp: () {
        when(mockGetLocation
          .call())
          .thenAnswer((inv) async => Future.value(mockLocationEntity)
        );

        when(mockGetForecastList
          .call(latitude: mockLocationEntity.latitude, longitude: mockLocationEntity.longitude))
          .thenAnswer((inv) async => Future.value(mockForecastListEntity)
        );
      },
      act: (bloc) => bloc.add(GetForecastListEvent()),
      expect: () => [isA<ForecastListLoading>(), isA<ForecastListLoaded>()],
    );

    blocTest(
      'bloc state changed to ForecastListError when network throw exception',
      build: () => bloc,
      setUp: () {
        when(mockGetLocation
            .call())
            .thenAnswer((inv) async => Future.value(mockLocationEntity)
        );

        when(mockGetForecastList
            .call(latitude: mockLocationEntity.latitude, longitude: mockLocationEntity.longitude))
            .thenThrow(DioException(requestOptions: RequestOptions())
        );
      },
      act: (bloc) => bloc.add(GetForecastListEvent()),
      expect: () => [isA<ForecastListLoading>(), isA<ForecastListError>()],
    );

    blocTest(
      'bloc state changed to ForecastListError when Location not accessible',
      build: () => bloc,
      setUp: () {
        when(mockGetLocation
            .call())
            .thenAnswer((inv) async => Future.value(null)
        );

        when(mockGetForecastList
            .call(latitude: anyNamed("latitude"), longitude: anyNamed("longitude")))
            .thenAnswer((inv) async => Future.value(mockForecastListEntity)
        );
      },
      act: (bloc) => bloc.add(GetForecastListEvent()),
      expect: () => [isA<ForecastListLoading>(), isA<ForecastListError>()],
    );

  });
}