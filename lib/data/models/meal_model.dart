import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/ingredient_detail_entity.dart';
import 'package:recipe_app/domain/entities/meal_entity.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
abstract class MealModel with _$MealModel {
  const MealModel._();

  const factory MealModel({
    @JsonKey(name: 'idMeal') required String id,
    @JsonKey(name: 'strMeal') required String name,
    @JsonKey(name: 'strCategory') required String category,
    @JsonKey(name: 'strArea') required String area,
    @JsonKey(name: 'strInstructions') required String instructions,
    @JsonKey(name: 'strMealThumb') required String thumbnail,
    @JsonKey(name: 'strTags') String? tags,
    @JsonKey(name: 'strYoutube') String? youtubeUrl,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strIngredient16,
    String? strIngredient17,
    String? strIngredient18,
    String? strIngredient19,
    String? strIngredient20,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
    String? strMeasure16,
    String? strMeasure17,
    String? strMeasure18,
    String? strMeasure19,
    String? strMeasure20,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);

  MealEntity toEntity() {
    final ingredients = <IngredientDetailEntity>[];
    final ingredientsMap = _collectIngredients();

    ingredientsMap.forEach((name, measure) {
      ingredients.add(IngredientDetailEntity(name: name, measure: measure));
    });

    return MealEntity(
      id: id,
      name: name,
      category: category,
      area: area,
      instructions: instructions,
      thumbnail: thumbnail,
      tags: tags,
      youtubeUrl: youtubeUrl,
      ingredients: ingredients,
    );
  }

  // Helper để gom các trường strIngredient và strMeasure thành một Map
  Map<String, String> _collectIngredients() {
    final map = <String, String>{};
    final ingredients = [
      strIngredient1,
      strIngredient2,
      strIngredient3,
      strIngredient4,
      strIngredient5,
      strIngredient6,
      strIngredient7,
      strIngredient8,
      strIngredient9,
      strIngredient10,
      strIngredient11,
      strIngredient12,
      strIngredient13,
      strIngredient14,
      strIngredient15,
      strIngredient16,
      strIngredient17,
      strIngredient18,
      strIngredient19,
      strIngredient20,
    ];
    final measures = [
      strMeasure1,
      strMeasure2,
      strMeasure3,
      strMeasure4,
      strMeasure5,
      strMeasure6,
      strMeasure7,
      strMeasure8,
      strMeasure9,
      strMeasure10,
      strMeasure11,
      strMeasure12,
      strMeasure13,
      strMeasure14,
      strMeasure15,
      strMeasure16,
      strMeasure17,
      strMeasure18,
      strMeasure19,
      strMeasure20,
    ];

    for (int i = 0; i < ingredients.length; i++) {
      final ingredient = ingredients[i];
      final measure = measures[i];

      // Chỉ thêm vào nếu tên nguyên liệu hợp lệ và không rỗng
      if (ingredient != null && ingredient.trim().isNotEmpty) {
        map[ingredient] = (measure != null && measure.trim().isNotEmpty)
            ? measure
            : '';
      }
    }
    return map;
  }
}
