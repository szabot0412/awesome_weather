import 'package:awesome_weather/config/cache_config.dart';
import 'package:awesome_weather/features/forecast/data/model/cache/cached_data.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocalForecastDatasource{
  Box<CachedData>? _box;

  Future<void> init() async {
    if(_box !=null) return;

    await Hive.initFlutter();
    Hive.registerAdapter(CachedDataAdapter());
    _box = await Hive.openBox("cache");
  }

  Future<void> cacheData({required String path, required double latitude, required double longitude, required Map<String,dynamic> data}) async {
    await _box!.add(CachedData(path: path, latitude: latitude, longitude: longitude, date: DateTime.now(), data: data));
    _box?.flush();
  }

  Map<String,dynamic>? getCachedData({required String path, required double latitude, required double longitude}) {
    _clean();

    double nearestDistance = double.infinity;
    CachedData? nearestData;
    for (var element in _box!.values) {
      if(element.path == path){
        double actualDistance = Geolocator.distanceBetween(latitude, longitude, element.latitude, element.longitude);
        if(nearestData == null || actualDistance < nearestDistance){
          nearestData = element;
          nearestDistance = actualDistance;
        }
      }
    }

    if(nearestData != null && nearestDistance < CacheConfig.maxDistance){
      return nearestData.data;
    }

    return null;
  }

  void _clean() async {
    final DateTime now = DateTime.now();
    final List<CachedData> listValues = _box!.values.toList();
    List<int> outdatedIndexes = [];

    for (int i=0; i < listValues.length; i++) {
      if(now.difference(listValues[i].date) > CacheConfig.maxTime) {
        outdatedIndexes.add(i);
      }
    }

    for (var index in outdatedIndexes.reversed) {
      _box!.deleteAt(index);
    }
  }
}
