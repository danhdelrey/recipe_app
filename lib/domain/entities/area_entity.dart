import 'package:freezed_annotation/freezed_annotation.dart';

part 'area_entity.freezed.dart';

@freezed
abstract class AreaEntity with _$AreaEntity {
  const factory AreaEntity({required String name}) = _AreaEntity;
}
