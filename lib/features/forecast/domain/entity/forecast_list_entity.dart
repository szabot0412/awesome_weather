import 'package:awesome_weather/features/forecast/domain/entity/current_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/forecast_list_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:equatable/equatable.dart';

class ForecastListEntity extends Equatable{
  final LocationEntity location;
  final CurrentValuesEntity current;
  final List<ForecastListValuesEntity> daily;

  ForecastListEntity({
    required double latitude,
    required double longitude,
    required this.current,
    required this.daily,
  }): location = LocationEntity(latitude: latitude, longitude: longitude);

  @override
  List<Object?> get props => [location, current, daily];
}