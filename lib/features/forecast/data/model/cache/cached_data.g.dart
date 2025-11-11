// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedDataAdapter extends TypeAdapter<_CachedData> {
  @override
  final typeId = 0;

  @override
  _CachedData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _CachedData(
      path: fields[0] as String,
      latitude: (fields[1] as num).toDouble(),
      longitude: (fields[2] as num).toDouble(),
      date: fields[3] as DateTime,
      data: (fields[4] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, _CachedData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
