import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';

abstract class LocationRepository{
  Future<LocationEntity?> getLocation();
}