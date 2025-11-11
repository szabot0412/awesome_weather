import 'package:awesome_weather/features/forecast/domain/entity/day_details_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:awesome_weather/features/forecast/domain/usecase/get_day_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'day_detail_event.dart';
import 'day_detail_state.dart';

@injectable
class DayDetailBloc extends Bloc<DayDetailEvent, DayDetailState> {
  final GetDayDetail _getForecastList;
  final LocationEntity location;
  final DateTime date;

  DayDetailBloc(this._getForecastList, @factoryParam this.location, @factoryParam this.date): super(DayDetailStateInitial()) {
    on<GetDayDetailEvent>((event, emit) async {
      emit(DayDetailStateLoading());
      try{
        DayDetailsEntity detail = await _getForecastList.call(latitude: location.latitude, longitude: location.longitude, date: date);
        emit(DayDetailStateLoaded(detail));
      }catch(e){
        debugPrint(e.toString());
        emit(DayDetailStateError(e));
      }
    });
  }
}