import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/area_entity.dart';

part 'area_model.freezed.dart';
part 'area_model.g.dart';

@freezed
abstract class AreaModel with _$AreaModel {
  const AreaModel._();

  const factory AreaModel({@JsonKey(name: 'strArea') required String name}) =
      _AreaModel;

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);

  AreaEntity toEntity() => AreaEntity(name: name);
}
