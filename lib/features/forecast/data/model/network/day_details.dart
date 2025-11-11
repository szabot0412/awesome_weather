import 'package:awesome_weather/features/forecast/data/model/network/day_detail_values.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_details.freezed.dart';
part 'day_details.g.dart';

@freezed
sealed class DayDetails with _$DayDetails {
  const factory DayDetails({
    required double latitude,
    required double longitude,
    required DayDetailValues hourly,

  }) = _DayDetails;

  factory DayDetails.fromJson(Map<String, dynamic> json) => _$DayDetailsFromJson(json);
}