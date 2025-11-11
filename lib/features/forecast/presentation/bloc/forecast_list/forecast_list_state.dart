import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';

sealed class ForecastListState{}

class ForecastListInitial extends ForecastListState {}

class ForecastListLoading extends ForecastListState {}

class ForecastListError extends ForecastListState {
  final Object error;
  ForecastListError(this.error);
}

class ForecastListLoaded extends ForecastListState {
  final ForecastListEntity forecastList;
  ForecastListLoaded(this.forecastList);
}