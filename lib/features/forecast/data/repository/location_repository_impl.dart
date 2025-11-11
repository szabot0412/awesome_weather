import 'package:awesome_weather/features/forecast/data/datasource/location_datasource.dart';
import 'package:awesome_weather/features/forecast/domain/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: LocationRepository)
class LocationRepositoryImpl extends LocationRepository{
  final LocationDatasource _locationDatasource;

  LocationRepositoryImpl(this._locationDatasource);

  @override
  Future<Position?> getLocation() {
    return _locationDatasource.getLocation();
  }

}