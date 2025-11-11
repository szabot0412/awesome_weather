import 'package:awesome_weather/features/forecast/domain/entity/day_detail_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';

class DayDetailEntity{
  final LocationEntity location;
  final List<DayDetailValuesEntity> hourly;

  DayDetailEntity({
    required double latitude,
    required double longitude,
    required this.hourly
  }): location = LocationEntity(latitude: latitude, longitude: longitude);
}