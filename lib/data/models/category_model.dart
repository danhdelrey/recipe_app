import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/category_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const CategoryModel._(); 

  const factory CategoryModel({
    @JsonKey(name: 'strCategory') required String name,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  // Hàm chuyển đổi từ Model sang Entity
  CategoryEntity toEntity() => CategoryEntity(name: name);
}
