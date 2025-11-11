import 'package:awesome_weather/features/forecast/data/model/network/day_detail_values.dart';
import 'package:awesome_weather/features/forecast/domain/entity/day_detail_values_entity.dart';
import 'package:awesome_weather/features/forecast/domain/entity/day_details_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_details.freezed.dart';
part 'day_details.g.dart';

@freezed
sealed class DayDetails with _$DayDetails {
  const DayDetails._();
  const factory DayDetails({
    required double latitude,
    required double longitude,
    required DayDetailValues hourly,

  }) = _DayDetails;

  factory DayDetails.fromJson(Map<String, dynamic> json) => _$DayDetailsFromJson(json);

  DayDetailsEntity toEntity(){
    List<DayDetailValuesEntity> listValues = [];

    for(int i=0; i<hourly.time.length; i++){
      listValues.add( DayDetailValuesEntity(
          time: hourly.time[i],
          weatherCode: hourly.weatherCode[i],
          temperature: hourly.temperature2m[i],
          rain: hourly.rain[i])
      );
    }

    return DayDetailsEntity(
        latitude: latitude,
        longitude: longitude,
        hourly: listValues);
  }
}