import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:awesome_weather/features/forecast/domain/usecase/get_forecast_list.dart';
import 'package:awesome_weather/features/forecast/domain/usecase/get_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'forecast_list_event.dart';
import 'forecast_list_state.dart';

@injectable
class ForecastListBloc extends Bloc<ForecastListEvent,ForecastListState> {
  final GetForecastList _getForecastList;
  final GetLocation _getLocation;

  ForecastListBloc(this._getForecastList, this._getLocation): super(ForecastListInitial()) {
    on<GetForecastListEvent>((event, emit) async {
      emit(ForecastListLoading());
      try{
        LocationEntity? location = await _getLocation.call();
        if(location == null){
          emit(ForecastListError(Exception()));
        }else{
          ForecastListEntity list = await _getForecastList.call(latitude: location.latitude, longitude: location.longitude);
          emit(ForecastListLoaded(list));
        }
      }catch(e){
        debugPrint(e.toString());
        emit(ForecastListError(e));
      }
    });
  }
}