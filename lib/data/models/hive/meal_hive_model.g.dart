// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealHiveModelAdapter extends TypeAdapter<MealHiveModel> {
  @override
  final typeId = 0;

  @override
  MealHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealHiveModel(
      id: fields[0] as String,
      name: fields[1] as String,
      category: fields[2] as String,
      area: fields[3] as String,
      instructions: fields[4] as String,
      thumbnail: fields[5] as String,
      tags: fields[6] as String?,
      youtubeUrl: fields[7] as String?,
      ingredients: (fields[8] as List).cast<IngredientDetailHiveModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, MealHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.area)
      ..writeByte(4)
      ..write(obj.instructions)
      ..writeByte(5)
      ..write(obj.thumbnail)
      ..writeByte(6)
      ..write(obj.tags)
      ..writeByte(7)
      ..write(obj.youtubeUrl)
      ..writeByte(8)
      ..write(obj.ingredients);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
