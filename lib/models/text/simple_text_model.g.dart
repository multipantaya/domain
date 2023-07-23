// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_text_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SimpleTextModelAdapter extends TypeAdapter<SimpleTextModel> {
  @override
  final int typeId = 5;

  @override
  SimpleTextModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SimpleTextModel(
      title: fields[0] as String,
      content: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SimpleTextModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleTextModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
