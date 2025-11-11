import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'cached_data.freezed.dart';
part 'cached_data.g.dart';

@freezed
sealed class CachedData with _$CachedData {
  @HiveType(typeId: 0)
  factory CachedData({
    @HiveField(0)
    required String path,
    @HiveField(1)
    required double latitude,
    @HiveField(2)
    required double longitude,
    @HiveField(3)
    required DateTime date,
    @HiveField(4)
    required Map<String,dynamic> data
  }) = _CachedData;

}

// @HiveType(typeId: 1)
// class Person extends HiveObject{
//   @HiveField(0)
//   String? name;
//   @HiveField(1)
//   int? age;
//
//   Person();
// }
//
//
// @HiveType(typeId: 12)
// class Favorite extends HiveObject{
//
//   @HiveField(1)
//   int? sportId;
//   @HiveField(2)
//   String? sportName;
//
//   @HiveField(3)
//   int? countryId;
//   @HiveField(4)
//   String? countryName;
//
//   @HiveField(5)
//   int? competitionId;
//   @HiveField(6)
//   String? competitionName;
//   @HiveField(7)
//   String? competitionType;
//
//   @HiveField(8)
//   String? searchText;
//
//   @HiveField(9)
//   String name="";
//
//   @HiveField(10)
//   bool isDefault=false;
//
//   @HiveField(11)
//   double? minOdds;
//
//   @HiveField(12)
//   double? maxOdds;
//
//
//   Favorite();
//
// }