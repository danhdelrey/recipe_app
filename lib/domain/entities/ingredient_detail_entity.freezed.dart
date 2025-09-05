// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IngredientDetailEntity {

 String get name; String get measure;
/// Create a copy of IngredientDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientDetailEntityCopyWith<IngredientDetailEntity> get copyWith => _$IngredientDetailEntityCopyWithImpl<IngredientDetailEntity>(this as IngredientDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientDetailEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.measure, measure) || other.measure == measure));
}


@override
int get hashCode => Object.hash(runtimeType,name,measure);

@override
String toString() {
  return 'IngredientDetailEntity(name: $name, measure: $measure)';
}


}

/// @nodoc
abstract mixin class $IngredientDetailEntityCopyWith<$Res>  {
  factory $IngredientDetailEntityCopyWith(IngredientDetailEntity value, $Res Function(IngredientDetailEntity) _then) = _$IngredientDetailEntityCopyWithImpl;
@useResult
$Res call({
 String name, String measure
});




}
/// @nodoc
class _$IngredientDetailEntityCopyWithImpl<$Res>
    implements $IngredientDetailEntityCopyWith<$Res> {
  _$IngredientDetailEntityCopyWithImpl(this._self, this._then);

  final IngredientDetailEntity _self;
  final $Res Function(IngredientDetailEntity) _then;

/// Create a copy of IngredientDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? measure = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientDetailEntity].
extension IngredientDetailEntityPatterns on IngredientDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _IngredientDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String measure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientDetailEntity() when $default != null:
return $default(_that.name,_that.measure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String measure)  $default,) {final _that = this;
switch (_that) {
case _IngredientDetailEntity():
return $default(_that.name,_that.measure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String measure)?  $default,) {final _that = this;
switch (_that) {
case _IngredientDetailEntity() when $default != null:
return $default(_that.name,_that.measure);case _:
  return null;

}
}

}

/// @nodoc


class _IngredientDetailEntity implements IngredientDetailEntity {
  const _IngredientDetailEntity({required this.name, required this.measure});
  

@override final  String name;
@override final  String measure;

/// Create a copy of IngredientDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientDetailEntityCopyWith<_IngredientDetailEntity> get copyWith => __$IngredientDetailEntityCopyWithImpl<_IngredientDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientDetailEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.measure, measure) || other.measure == measure));
}


@override
int get hashCode => Object.hash(runtimeType,name,measure);

@override
String toString() {
  return 'IngredientDetailEntity(name: $name, measure: $measure)';
}


}

/// @nodoc
abstract mixin class _$IngredientDetailEntityCopyWith<$Res> implements $IngredientDetailEntityCopyWith<$Res> {
  factory _$IngredientDetailEntityCopyWith(_IngredientDetailEntity value, $Res Function(_IngredientDetailEntity) _then) = __$IngredientDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String measure
});




}
/// @nodoc
class __$IngredientDetailEntityCopyWithImpl<$Res>
    implements _$IngredientDetailEntityCopyWith<$Res> {
  __$IngredientDetailEntityCopyWithImpl(this._self, this._then);

  final _IngredientDetailEntity _self;
  final $Res Function(_IngredientDetailEntity) _then;

/// Create a copy of IngredientDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? measure = null,}) {
  return _then(_IngredientDetailEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
