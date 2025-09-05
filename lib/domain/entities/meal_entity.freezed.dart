// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealEntity {

 String get id; String get name; String get category; String get area; String get instructions; String get thumbnail; String? get tags; String? get youtubeUrl; List<IngredientDetailEntity> get ingredients;
/// Create a copy of MealEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealEntityCopyWith<MealEntity> get copyWith => _$MealEntityCopyWithImpl<MealEntity>(this as MealEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.youtubeUrl, youtubeUrl) || other.youtubeUrl == youtubeUrl)&&const DeepCollectionEquality().equals(other.ingredients, ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,category,area,instructions,thumbnail,tags,youtubeUrl,const DeepCollectionEquality().hash(ingredients));

@override
String toString() {
  return 'MealEntity(id: $id, name: $name, category: $category, area: $area, instructions: $instructions, thumbnail: $thumbnail, tags: $tags, youtubeUrl: $youtubeUrl, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $MealEntityCopyWith<$Res>  {
  factory $MealEntityCopyWith(MealEntity value, $Res Function(MealEntity) _then) = _$MealEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String category, String area, String instructions, String thumbnail, String? tags, String? youtubeUrl, List<IngredientDetailEntity> ingredients
});




}
/// @nodoc
class _$MealEntityCopyWithImpl<$Res>
    implements $MealEntityCopyWith<$Res> {
  _$MealEntityCopyWithImpl(this._self, this._then);

  final MealEntity _self;
  final $Res Function(MealEntity) _then;

/// Create a copy of MealEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? category = null,Object? area = null,Object? instructions = null,Object? thumbnail = null,Object? tags = freezed,Object? youtubeUrl = freezed,Object? ingredients = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,youtubeUrl: freezed == youtubeUrl ? _self.youtubeUrl : youtubeUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientDetailEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealEntity].
extension MealEntityPatterns on MealEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealEntity value)  $default,){
final _that = this;
switch (_that) {
case _MealEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MealEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String category,  String area,  String instructions,  String thumbnail,  String? tags,  String? youtubeUrl,  List<IngredientDetailEntity> ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealEntity() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.area,_that.instructions,_that.thumbnail,_that.tags,_that.youtubeUrl,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String category,  String area,  String instructions,  String thumbnail,  String? tags,  String? youtubeUrl,  List<IngredientDetailEntity> ingredients)  $default,) {final _that = this;
switch (_that) {
case _MealEntity():
return $default(_that.id,_that.name,_that.category,_that.area,_that.instructions,_that.thumbnail,_that.tags,_that.youtubeUrl,_that.ingredients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String category,  String area,  String instructions,  String thumbnail,  String? tags,  String? youtubeUrl,  List<IngredientDetailEntity> ingredients)?  $default,) {final _that = this;
switch (_that) {
case _MealEntity() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.area,_that.instructions,_that.thumbnail,_that.tags,_that.youtubeUrl,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc


class _MealEntity implements MealEntity {
  const _MealEntity({required this.id, required this.name, required this.category, required this.area, required this.instructions, required this.thumbnail, this.tags, this.youtubeUrl, required final  List<IngredientDetailEntity> ingredients}): _ingredients = ingredients;
  

@override final  String id;
@override final  String name;
@override final  String category;
@override final  String area;
@override final  String instructions;
@override final  String thumbnail;
@override final  String? tags;
@override final  String? youtubeUrl;
 final  List<IngredientDetailEntity> _ingredients;
@override List<IngredientDetailEntity> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}


/// Create a copy of MealEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealEntityCopyWith<_MealEntity> get copyWith => __$MealEntityCopyWithImpl<_MealEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.youtubeUrl, youtubeUrl) || other.youtubeUrl == youtubeUrl)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,category,area,instructions,thumbnail,tags,youtubeUrl,const DeepCollectionEquality().hash(_ingredients));

@override
String toString() {
  return 'MealEntity(id: $id, name: $name, category: $category, area: $area, instructions: $instructions, thumbnail: $thumbnail, tags: $tags, youtubeUrl: $youtubeUrl, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$MealEntityCopyWith<$Res> implements $MealEntityCopyWith<$Res> {
  factory _$MealEntityCopyWith(_MealEntity value, $Res Function(_MealEntity) _then) = __$MealEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String category, String area, String instructions, String thumbnail, String? tags, String? youtubeUrl, List<IngredientDetailEntity> ingredients
});




}
/// @nodoc
class __$MealEntityCopyWithImpl<$Res>
    implements _$MealEntityCopyWith<$Res> {
  __$MealEntityCopyWithImpl(this._self, this._then);

  final _MealEntity _self;
  final $Res Function(_MealEntity) _then;

/// Create a copy of MealEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? category = null,Object? area = null,Object? instructions = null,Object? thumbnail = null,Object? tags = freezed,Object? youtubeUrl = freezed,Object? ingredients = null,}) {
  return _then(_MealEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,youtubeUrl: freezed == youtubeUrl ? _self.youtubeUrl : youtubeUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<IngredientDetailEntity>,
  ));
}


}

// dart format on
