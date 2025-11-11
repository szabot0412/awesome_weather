import 'package:awesome_weather/features/forecast/domain/entity/location_entity.dart';
import 'package:awesome_weather/features/forecast/domain/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';


@singleton
class GetLocation{
  final LocationRepository _locationRepository;

  GetLocation(this._locationRepository);

  Future<LocationEntity?> call() async {
    Position? position = await _locationRepository.getLocation();
    if(position != null){
      return LocationEntity(latitude: position.latitude, longitude: position.longitude);
    }
    return null;
  }
}