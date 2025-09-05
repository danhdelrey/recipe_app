// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_detail_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngredientDetailHiveModelAdapter
    extends TypeAdapter<IngredientDetailHiveModel> {
  @override
  final typeId = 1;

  @override
  IngredientDetailHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngredientDetailHiveModel(
      name: fields[0] as String,
      measure: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, IngredientDetailHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.measure);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientDetailHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
