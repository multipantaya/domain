// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlansModelAdapter extends TypeAdapter<PlansModel> {
  @override
  final int typeId = 4;

  @override
  PlansModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlansModel(
      id: fields[0] as String,
      namePlan: fields[1] as String,
      price: fields[2] as double,
      description: (fields[3] as List).cast<SimpleTextModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlansModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.namePlan)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlansModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
