// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:awesome_weather/core/dependency_injection/injection.dart'
    as _i683;
import 'package:awesome_weather/core/network/http_service.dart' as _i827;
import 'package:awesome_weather/features/forecast/data/datasource/local_forecast_datasource.dart'
    as _i142;
import 'package:awesome_weather/features/forecast/data/datasource/location_datasource.dart'
    as _i214;
import 'package:awesome_weather/features/forecast/data/datasource/network_forecast_datasource.dart'
    as _i203;
import 'package:awesome_weather/features/forecast/data/repository/forecast_repository_impl.dart'
    as _i224;
import 'package:awesome_weather/features/forecast/data/repository/location_repository_impl.dart'
    as _i450;
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart'
    as _i534;
import 'package:awesome_weather/features/forecast/domain/repository/forecast_repository.dart'
    as _i577;
import 'package:awesome_weather/features/forecast/domain/repository/location_repository.dart'
    as _i169;
import 'package:awesome_weather/features/forecast/domain/usecase/get_day_detail.dart'
    as _i486;
import 'package:awesome_weather/features/forecast/domain/usecase/get_forecast_list.dart'
    as _i697;
import 'package:awesome_weather/features/forecast/domain/usecase/get_location.dart'
    as _i136;
import 'package:awesome_weather/features/forecast/presentation/bloc/day_detail/day_detail_bloc.dart'
    as _i177;
import 'package:awesome_weather/features/forecast/presentation/bloc/forecast_list/forecast_list_bloc.dart'
    as _i486;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i361.Dio>(() => registerModule.httpClient());
    gh.singleton<_i214.LocationDatasource>(() => _i214.LocationDatasource());
    gh.singleton<_i142.LocalForecastDatasource>(
      () => _i142.LocalForecastDatasource(),
    );
    gh.singleton<_i169.LocationRepository>(
      () => _i450.LocationRepositoryImpl(gh<_i214.LocationDatasource>()),
    );
    gh.singleton<_i136.GetLocation>(
      () => _i136.GetLocation(gh<_i169.LocationRepository>()),
    );
    gh.singleton<_i827.HttpService>(
      () => _i827.HttpService(client: gh<_i361.Dio>()),
    );
    gh.singleton<_i203.NetworkForecastDatasource>(
      () => _i203.NetworkForecastDatasource(gh<_i827.HttpService>()),
    );
    gh.singleton<_i577.ForecastRepository>(
      () => _i224.ForecastRepositoryImpl(
        gh<_i203.NetworkForecastDatasource>(),
        gh<_i142.LocalForecastDatasource>(),
      ),
    );
    gh.singleton<_i697.GetForecastList>(
      () => _i697.GetForecastList(gh<_i577.ForecastRepository>()),
    );
    gh.singleton<_i486.GetDayDetail>(
      () => _i486.GetDayDetail(gh<_i577.ForecastRepository>()),
    );
    gh.factory<_i486.ForecastListBloc>(
      () => _i486.ForecastListBloc(
        gh<_i697.GetForecastList>(),
        gh<_i136.GetLocation>(),
      ),
    );
    gh.factoryParam<_i177.DayDetailBloc, _i534.LocationEntity, DateTime>(
      (location, date) =>
          _i177.DayDetailBloc(gh<_i486.GetDayDetail>(), location, date),
    );
    return this;
  }
}

class _$RegisterModule extends _i683.RegisterModule {}
