import 'package:awesome_weather/features/forecast/domain/entity/day_detail_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:equatable/equatable.dart';

class DayDetailsEntity extends Equatable{
  final LocationEntity location;
  final List<DayDetailValuesEntity> hourly;

  DayDetailsEntity({
    required double latitude,
    required double longitude,
    required this.hourly
  }): location = LocationEntity(latitude: latitude, longitude: longitude);

  @override
  List<Object?> get props => [location, hourly];
}