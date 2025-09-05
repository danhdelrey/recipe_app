// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteStatusEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteStatusEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteStatusEvent()';
}


}

/// @nodoc
class $FavoriteStatusEventCopyWith<$Res>  {
$FavoriteStatusEventCopyWith(FavoriteStatusEvent _, $Res Function(FavoriteStatusEvent) __);
}


/// Adds pattern-matching-related methods to [FavoriteStatusEvent].
extension FavoriteStatusEventPatterns on FavoriteStatusEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckStatus value)?  checkStatus,TResult Function( _ToggleFavorite value)?  toggleFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that);case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckStatus value)  checkStatus,required TResult Function( _ToggleFavorite value)  toggleFavorite,}){
final _that = this;
switch (_that) {
case _CheckStatus():
return checkStatus(_that);case _ToggleFavorite():
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckStatus value)?  checkStatus,TResult? Function( _ToggleFavorite value)?  toggleFavorite,}){
final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that);case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String mealId)?  checkStatus,TResult Function( MealEntity meal)?  toggleFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that.mealId);case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.meal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String mealId)  checkStatus,required TResult Function( MealEntity meal)  toggleFavorite,}) {final _that = this;
switch (_that) {
case _CheckStatus():
return checkStatus(_that.mealId);case _ToggleFavorite():
return toggleFavorite(_that.meal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String mealId)?  checkStatus,TResult? Function( MealEntity meal)?  toggleFavorite,}) {final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that.mealId);case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.meal);case _:
  return null;

}
}

}

/// @nodoc


class _CheckStatus implements FavoriteStatusEvent {
  const _CheckStatus(this.mealId);
  

 final  String mealId;

/// Create a copy of FavoriteStatusEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckStatusCopyWith<_CheckStatus> get copyWith => __$CheckStatusCopyWithImpl<_CheckStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckStatus&&(identical(other.mealId, mealId) || other.mealId == mealId));
}


@override
int get hashCode => Object.hash(runtimeType,mealId);

@override
String toString() {
  return 'FavoriteStatusEvent.checkStatus(mealId: $mealId)';
}


}

/// @nodoc
abstract mixin class _$CheckStatusCopyWith<$Res> implements $FavoriteStatusEventCopyWith<$Res> {
  factory _$CheckStatusCopyWith(_CheckStatus value, $Res Function(_CheckStatus) _then) = __$CheckStatusCopyWithImpl;
@useResult
$Res call({
 String mealId
});




}
/// @nodoc
class __$CheckStatusCopyWithImpl<$Res>
    implements _$CheckStatusCopyWith<$Res> {
  __$CheckStatusCopyWithImpl(this._self, this._then);

  final _CheckStatus _self;
  final $Res Function(_CheckStatus) _then;

/// Create a copy of FavoriteStatusEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mealId = null,}) {
  return _then(_CheckStatus(
null == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleFavorite implements FavoriteStatusEvent {
  const _ToggleFavorite(this.meal);
  

 final  MealEntity meal;

/// Create a copy of FavoriteStatusEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavoriteCopyWith<_ToggleFavorite> get copyWith => __$ToggleFavoriteCopyWithImpl<_ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavorite&&(identical(other.meal, meal) || other.meal == meal));
}


@override
int get hashCode => Object.hash(runtimeType,meal);

@override
String toString() {
  return 'FavoriteStatusEvent.toggleFavorite(meal: $meal)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteCopyWith<$Res> implements $FavoriteStatusEventCopyWith<$Res> {
  factory _$ToggleFavoriteCopyWith(_ToggleFavorite value, $Res Function(_ToggleFavorite) _then) = __$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 MealEntity meal
});


$MealEntityCopyWith<$Res> get meal;

}
/// @nodoc
class __$ToggleFavoriteCopyWithImpl<$Res>
    implements _$ToggleFavoriteCopyWith<$Res> {
  __$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final _ToggleFavorite _self;
  final $Res Function(_ToggleFavorite) _then;

/// Create a copy of FavoriteStatusEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meal = null,}) {
  return _then(_ToggleFavorite(
null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as MealEntity,
  ));
}

/// Create a copy of FavoriteStatusEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealEntityCopyWith<$Res> get meal {
  
  return $MealEntityCopyWith<$Res>(_self.meal, (value) {
    return _then(_self.copyWith(meal: value));
  });
}
}

/// @nodoc
mixin _$FavoriteStatusState {

 FavoriteStatus get status; String? get errorMessage;
/// Create a copy of FavoriteStatusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteStatusStateCopyWith<FavoriteStatusState> get copyWith => _$FavoriteStatusStateCopyWithImpl<FavoriteStatusState>(this as FavoriteStatusState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteStatusState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage);

@override
String toString() {
  return 'FavoriteStatusState(status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FavoriteStatusStateCopyWith<$Res>  {
  factory $FavoriteStatusStateCopyWith(FavoriteStatusState value, $Res Function(FavoriteStatusState) _then) = _$FavoriteStatusStateCopyWithImpl;
@useResult
$Res call({
 FavoriteStatus status, String? errorMessage
});




}
/// @nodoc
class _$FavoriteStatusStateCopyWithImpl<$Res>
    implements $FavoriteStatusStateCopyWith<$Res> {
  _$FavoriteStatusStateCopyWithImpl(this._self, this._then);

  final FavoriteStatusState _self;
  final $Res Function(FavoriteStatusState) _then;

/// Create a copy of FavoriteStatusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteStatusState].
extension FavoriteStatusStatePatterns on FavoriteStatusState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteStatusState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteStatusState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteStatusState value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteStatusState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteStatusState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteStatusState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteStatusState() when $default != null:
return $default(_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FavoriteStatusState():
return $default(_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteStatusState() when $default != null:
return $default(_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteStatusState implements FavoriteStatusState {
  const _FavoriteStatusState({this.status = FavoriteStatus.initial, this.errorMessage});
  

@override@JsonKey() final  FavoriteStatus status;
@override final  String? errorMessage;

/// Create a copy of FavoriteStatusState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteStatusStateCopyWith<_FavoriteStatusState> get copyWith => __$FavoriteStatusStateCopyWithImpl<_FavoriteStatusState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteStatusState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage);

@override
String toString() {
  return 'FavoriteStatusState(status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FavoriteStatusStateCopyWith<$Res> implements $FavoriteStatusStateCopyWith<$Res> {
  factory _$FavoriteStatusStateCopyWith(_FavoriteStatusState value, $Res Function(_FavoriteStatusState) _then) = __$FavoriteStatusStateCopyWithImpl;
@override @useResult
$Res call({
 FavoriteStatus status, String? errorMessage
});




}
/// @nodoc
class __$FavoriteStatusStateCopyWithImpl<$Res>
    implements _$FavoriteStatusStateCopyWith<$Res> {
  __$FavoriteStatusStateCopyWithImpl(this._self, this._then);

  final _FavoriteStatusState _self;
  final $Res Function(_FavoriteStatusState) _then;

/// Create a copy of FavoriteStatusState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_FavoriteStatusState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
