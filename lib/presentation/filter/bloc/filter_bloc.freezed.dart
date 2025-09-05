// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterEvent()';
}


}

/// @nodoc
class $FilterEventCopyWith<$Res>  {
$FilterEventCopyWith(FilterEvent _, $Res Function(FilterEvent) __);
}


/// Adds pattern-matching-related methods to [FilterEvent].
extension FilterEventPatterns on FilterEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchData value)?  fetchData,TResult Function( _CategorySelected value)?  categorySelected,TResult Function( _AreaSelected value)?  areaSelected,TResult Function( _IngredientSelected value)?  ingredientSelected,TResult Function( _ResetFilters value)?  resetFilters,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchData() when fetchData != null:
return fetchData(_that);case _CategorySelected() when categorySelected != null:
return categorySelected(_that);case _AreaSelected() when areaSelected != null:
return areaSelected(_that);case _IngredientSelected() when ingredientSelected != null:
return ingredientSelected(_that);case _ResetFilters() when resetFilters != null:
return resetFilters(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchData value)  fetchData,required TResult Function( _CategorySelected value)  categorySelected,required TResult Function( _AreaSelected value)  areaSelected,required TResult Function( _IngredientSelected value)  ingredientSelected,required TResult Function( _ResetFilters value)  resetFilters,}){
final _that = this;
switch (_that) {
case _FetchData():
return fetchData(_that);case _CategorySelected():
return categorySelected(_that);case _AreaSelected():
return areaSelected(_that);case _IngredientSelected():
return ingredientSelected(_that);case _ResetFilters():
return resetFilters(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchData value)?  fetchData,TResult? Function( _CategorySelected value)?  categorySelected,TResult? Function( _AreaSelected value)?  areaSelected,TResult? Function( _IngredientSelected value)?  ingredientSelected,TResult? Function( _ResetFilters value)?  resetFilters,}){
final _that = this;
switch (_that) {
case _FetchData() when fetchData != null:
return fetchData(_that);case _CategorySelected() when categorySelected != null:
return categorySelected(_that);case _AreaSelected() when areaSelected != null:
return areaSelected(_that);case _IngredientSelected() when ingredientSelected != null:
return ingredientSelected(_that);case _ResetFilters() when resetFilters != null:
return resetFilters(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchData,TResult Function( String category)?  categorySelected,TResult Function( String area)?  areaSelected,TResult Function( String ingredient)?  ingredientSelected,TResult Function()?  resetFilters,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchData() when fetchData != null:
return fetchData();case _CategorySelected() when categorySelected != null:
return categorySelected(_that.category);case _AreaSelected() when areaSelected != null:
return areaSelected(_that.area);case _IngredientSelected() when ingredientSelected != null:
return ingredientSelected(_that.ingredient);case _ResetFilters() when resetFilters != null:
return resetFilters();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchData,required TResult Function( String category)  categorySelected,required TResult Function( String area)  areaSelected,required TResult Function( String ingredient)  ingredientSelected,required TResult Function()  resetFilters,}) {final _that = this;
switch (_that) {
case _FetchData():
return fetchData();case _CategorySelected():
return categorySelected(_that.category);case _AreaSelected():
return areaSelected(_that.area);case _IngredientSelected():
return ingredientSelected(_that.ingredient);case _ResetFilters():
return resetFilters();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchData,TResult? Function( String category)?  categorySelected,TResult? Function( String area)?  areaSelected,TResult? Function( String ingredient)?  ingredientSelected,TResult? Function()?  resetFilters,}) {final _that = this;
switch (_that) {
case _FetchData() when fetchData != null:
return fetchData();case _CategorySelected() when categorySelected != null:
return categorySelected(_that.category);case _AreaSelected() when areaSelected != null:
return areaSelected(_that.area);case _IngredientSelected() when ingredientSelected != null:
return ingredientSelected(_that.ingredient);case _ResetFilters() when resetFilters != null:
return resetFilters();case _:
  return null;

}
}

}

/// @nodoc


class _FetchData implements FilterEvent {
  const _FetchData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterEvent.fetchData()';
}


}




/// @nodoc


class _CategorySelected implements FilterEvent {
  const _CategorySelected(this.category);
  

 final  String category;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorySelectedCopyWith<_CategorySelected> get copyWith => __$CategorySelectedCopyWithImpl<_CategorySelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategorySelected&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'FilterEvent.categorySelected(category: $category)';
}


}

/// @nodoc
abstract mixin class _$CategorySelectedCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory _$CategorySelectedCopyWith(_CategorySelected value, $Res Function(_CategorySelected) _then) = __$CategorySelectedCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class __$CategorySelectedCopyWithImpl<$Res>
    implements _$CategorySelectedCopyWith<$Res> {
  __$CategorySelectedCopyWithImpl(this._self, this._then);

  final _CategorySelected _self;
  final $Res Function(_CategorySelected) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_CategorySelected(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AreaSelected implements FilterEvent {
  const _AreaSelected(this.area);
  

 final  String area;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AreaSelectedCopyWith<_AreaSelected> get copyWith => __$AreaSelectedCopyWithImpl<_AreaSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AreaSelected&&(identical(other.area, area) || other.area == area));
}


@override
int get hashCode => Object.hash(runtimeType,area);

@override
String toString() {
  return 'FilterEvent.areaSelected(area: $area)';
}


}

/// @nodoc
abstract mixin class _$AreaSelectedCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory _$AreaSelectedCopyWith(_AreaSelected value, $Res Function(_AreaSelected) _then) = __$AreaSelectedCopyWithImpl;
@useResult
$Res call({
 String area
});




}
/// @nodoc
class __$AreaSelectedCopyWithImpl<$Res>
    implements _$AreaSelectedCopyWith<$Res> {
  __$AreaSelectedCopyWithImpl(this._self, this._then);

  final _AreaSelected _self;
  final $Res Function(_AreaSelected) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? area = null,}) {
  return _then(_AreaSelected(
null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _IngredientSelected implements FilterEvent {
  const _IngredientSelected(this.ingredient);
  

 final  String ingredient;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientSelectedCopyWith<_IngredientSelected> get copyWith => __$IngredientSelectedCopyWithImpl<_IngredientSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientSelected&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient));
}


@override
int get hashCode => Object.hash(runtimeType,ingredient);

@override
String toString() {
  return 'FilterEvent.ingredientSelected(ingredient: $ingredient)';
}


}

/// @nodoc
abstract mixin class _$IngredientSelectedCopyWith<$Res> implements $FilterEventCopyWith<$Res> {
  factory _$IngredientSelectedCopyWith(_IngredientSelected value, $Res Function(_IngredientSelected) _then) = __$IngredientSelectedCopyWithImpl;
@useResult
$Res call({
 String ingredient
});




}
/// @nodoc
class __$IngredientSelectedCopyWithImpl<$Res>
    implements _$IngredientSelectedCopyWith<$Res> {
  __$IngredientSelectedCopyWithImpl(this._self, this._then);

  final _IngredientSelected _self;
  final $Res Function(_IngredientSelected) _then;

/// Create a copy of FilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredient = null,}) {
  return _then(_IngredientSelected(
null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ResetFilters implements FilterEvent {
  const _ResetFilters();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetFilters);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FilterEvent.resetFilters()';
}


}




/// @nodoc
mixin _$FilterState {

 FilterStatus get status; List<CategoryEntity> get categories; List<AreaEntity> get areas; List<IngredientEntity> get ingredients; String? get selectedCategory; String? get selectedArea; String? get selectedIngredient; String? get errorMessage;
/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterStateCopyWith<FilterState> get copyWith => _$FilterStateCopyWithImpl<FilterState>(this as FilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.areas, areas)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.selectedArea, selectedArea) || other.selectedArea == selectedArea)&&(identical(other.selectedIngredient, selectedIngredient) || other.selectedIngredient == selectedIngredient)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(areas),const DeepCollectionEquality().hash(ingredients),selectedCategory,selectedArea,selectedIngredient,errorMessage);

@override
String toString() {
  return 'FilterState(status: $status, categories: $categories, areas: $areas, ingredients: $ingredients, selectedCategory: $selectedCategory, selectedArea: $selectedArea, selectedIngredient: $selectedIngredient, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FilterStateCopyWith<$Res>  {
  factory $FilterStateCopyWith(FilterState value, $Res Function(FilterState) _then) = _$FilterStateCopyWithImpl;
@useResult
$Res call({
 FilterStatus status, List<CategoryEntity> categories, List<AreaEntity> areas, List<IngredientEntity> ingredients, String? selectedCategory, String? selectedArea, String? selectedIngredient, String? errorMessage
});




}
/// @nodoc
class _$FilterStateCopyWithImpl<$Res>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._self, this._then);

  final FilterState _self;
  final $Res Function(FilterState) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categories = null,Object? areas = null,Object? ingredients = null,Object? selectedCategory = freezed,Object? selectedArea = freezed,Object? selectedIngredient = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FilterStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,areas: null == areas ? _self.areas : areas // ignore: cast_nullable_to_non_nullable
as List<AreaEntity>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientEntity>,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,selectedArea: freezed == selectedArea ? _self.selectedArea : selectedArea // ignore: cast_nullable_to_non_nullable
as String?,selectedIngredient: freezed == selectedIngredient ? _self.selectedIngredient : selectedIngredient // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterState].
extension FilterStatePatterns on FilterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterState value)  $default,){
final _that = this;
switch (_that) {
case _FilterState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterState value)?  $default,){
final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FilterStatus status,  List<CategoryEntity> categories,  List<AreaEntity> areas,  List<IngredientEntity> ingredients,  String? selectedCategory,  String? selectedArea,  String? selectedIngredient,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that.status,_that.categories,_that.areas,_that.ingredients,_that.selectedCategory,_that.selectedArea,_that.selectedIngredient,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FilterStatus status,  List<CategoryEntity> categories,  List<AreaEntity> areas,  List<IngredientEntity> ingredients,  String? selectedCategory,  String? selectedArea,  String? selectedIngredient,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FilterState():
return $default(_that.status,_that.categories,_that.areas,_that.ingredients,_that.selectedCategory,_that.selectedArea,_that.selectedIngredient,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FilterStatus status,  List<CategoryEntity> categories,  List<AreaEntity> areas,  List<IngredientEntity> ingredients,  String? selectedCategory,  String? selectedArea,  String? selectedIngredient,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that.status,_that.categories,_that.areas,_that.ingredients,_that.selectedCategory,_that.selectedArea,_that.selectedIngredient,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FilterState implements FilterState {
  const _FilterState({this.status = FilterStatus.initial, final  List<CategoryEntity> categories = const [], final  List<AreaEntity> areas = const [], final  List<IngredientEntity> ingredients = const [], this.selectedCategory, this.selectedArea, this.selectedIngredient, this.errorMessage}): _categories = categories,_areas = areas,_ingredients = ingredients;
  

@override@JsonKey() final  FilterStatus status;
 final  List<CategoryEntity> _categories;
@override@JsonKey() List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<AreaEntity> _areas;
@override@JsonKey() List<AreaEntity> get areas {
  if (_areas is EqualUnmodifiableListView) return _areas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areas);
}

 final  List<IngredientEntity> _ingredients;
@override@JsonKey() List<IngredientEntity> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override final  String? selectedCategory;
@override final  String? selectedArea;
@override final  String? selectedIngredient;
@override final  String? errorMessage;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterStateCopyWith<_FilterState> get copyWith => __$FilterStateCopyWithImpl<_FilterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._areas, _areas)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.selectedArea, selectedArea) || other.selectedArea == selectedArea)&&(identical(other.selectedIngredient, selectedIngredient) || other.selectedIngredient == selectedIngredient)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_areas),const DeepCollectionEquality().hash(_ingredients),selectedCategory,selectedArea,selectedIngredient,errorMessage);

@override
String toString() {
  return 'FilterState(status: $status, categories: $categories, areas: $areas, ingredients: $ingredients, selectedCategory: $selectedCategory, selectedArea: $selectedArea, selectedIngredient: $selectedIngredient, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FilterStateCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$FilterStateCopyWith(_FilterState value, $Res Function(_FilterState) _then) = __$FilterStateCopyWithImpl;
@override @useResult
$Res call({
 FilterStatus status, List<CategoryEntity> categories, List<AreaEntity> areas, List<IngredientEntity> ingredients, String? selectedCategory, String? selectedArea, String? selectedIngredient, String? errorMessage
});




}
/// @nodoc
class __$FilterStateCopyWithImpl<$Res>
    implements _$FilterStateCopyWith<$Res> {
  __$FilterStateCopyWithImpl(this._self, this._then);

  final _FilterState _self;
  final $Res Function(_FilterState) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categories = null,Object? areas = null,Object? ingredients = null,Object? selectedCategory = freezed,Object? selectedArea = freezed,Object? selectedIngredient = freezed,Object? errorMessage = freezed,}) {
  return _then(_FilterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FilterStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,areas: null == areas ? _self._areas : areas // ignore: cast_nullable_to_non_nullable
as List<AreaEntity>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientEntity>,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,selectedArea: freezed == selectedArea ? _self.selectedArea : selectedArea // ignore: cast_nullable_to_non_nullable
as String?,selectedIngredient: freezed == selectedIngredient ? _self.selectedIngredient : selectedIngredient // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
