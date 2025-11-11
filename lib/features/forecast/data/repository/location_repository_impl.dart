import 'package:awesome_weather/features/forecast/data/datasource/location_datasource.dart';
import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:awesome_weather/features/forecast/domain/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: LocationRepository)
class LocationRepositoryImpl extends LocationRepository{
  final LocationDatasource _locationDatasource;

  LocationRepositoryImpl(this._locationDatasource);

  @override
  Future<LocationEntity?> getLocation() async {
    Position? position = await _locationDatasource.getLocation();
    if(position != null){
      return LocationEntity(latitude: position.latitude, longitude: position.longitude);
    }
    return null;
  }

}