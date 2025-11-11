import 'package:awesome_weather/features/forecast/domain/entity/day_details_entity.dart';

sealed class DayDetailState {}

class DayDetailStateInitial extends DayDetailState {}

class DayDetailStateLoading extends DayDetailState {}

class DayDetailStateError extends DayDetailState {
  final Object error;
  DayDetailStateError(this.error);
}

class DayDetailStateLoaded extends DayDetailState {
  final DayDetailsEntity dayDetail;
  DayDetailStateLoaded(this.dayDetail);
}