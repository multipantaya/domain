// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platforms_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlatformsModelAdapter extends TypeAdapter<PlatformsModel> {
  @override
  final int typeId = 1;

  @override
  PlatformsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlatformsModel(
      id: fields[0] as String,
      namePlatform: fields[1] as String,
      image: fields[2] as String,
      favorite: fields[3] as bool,
      totalAmount: fields[4] as int,
      plans: (fields[5] as List).cast<PlansModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlatformsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.namePlatform)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.favorite)
      ..writeByte(4)
      ..write(obj.totalAmount)
      ..writeByte(5)
      ..write(obj.plans);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlatformsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
