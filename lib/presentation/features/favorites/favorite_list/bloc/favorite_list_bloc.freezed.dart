// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteListEvent()';
}


}

/// @nodoc
class $FavoriteListEventCopyWith<$Res>  {
$FavoriteListEventCopyWith(FavoriteListEvent _, $Res Function(FavoriteListEvent) __);
}


/// Adds pattern-matching-related methods to [FavoriteListEvent].
extension FavoriteListEventPatterns on FavoriteListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SubscriptionRequested value)?  subscriptionRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SubscriptionRequested value)  subscriptionRequested,}){
final _that = this;
switch (_that) {
case _SubscriptionRequested():
return subscriptionRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SubscriptionRequested value)?  subscriptionRequested,}){
final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  subscriptionRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  subscriptionRequested,}) {final _that = this;
switch (_that) {
case _SubscriptionRequested():
return subscriptionRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  subscriptionRequested,}) {final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested();case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionRequested implements FavoriteListEvent {
  const _SubscriptionRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteListEvent.subscriptionRequested()';
}


}




/// @nodoc
mixin _$FavoriteListState {

 FavoriteListStatus get status; List<MealEntity> get meals; String? get errorMessage;
/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteListStateCopyWith<FavoriteListState> get copyWith => _$FavoriteListStateCopyWithImpl<FavoriteListState>(this as FavoriteListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.meals, meals)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(meals),errorMessage);

@override
String toString() {
  return 'FavoriteListState(status: $status, meals: $meals, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FavoriteListStateCopyWith<$Res>  {
  factory $FavoriteListStateCopyWith(FavoriteListState value, $Res Function(FavoriteListState) _then) = _$FavoriteListStateCopyWithImpl;
@useResult
$Res call({
 FavoriteListStatus status, List<MealEntity> meals, String? errorMessage
});




}
/// @nodoc
class _$FavoriteListStateCopyWithImpl<$Res>
    implements $FavoriteListStateCopyWith<$Res> {
  _$FavoriteListStateCopyWithImpl(this._self, this._then);

  final FavoriteListState _self;
  final $Res Function(FavoriteListState) _then;

/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? meals = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteListStatus,meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteListState].
extension FavoriteListStatePatterns on FavoriteListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteListState value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteListState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteListStatus status,  List<MealEntity> meals,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
return $default(_that.status,_that.meals,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteListStatus status,  List<MealEntity> meals,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FavoriteListState():
return $default(_that.status,_that.meals,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteListStatus status,  List<MealEntity> meals,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteListState() when $default != null:
return $default(_that.status,_that.meals,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteListState implements FavoriteListState {
  const _FavoriteListState({this.status = FavoriteListStatus.initial, final  List<MealEntity> meals = const [], this.errorMessage}): _meals = meals;
  

@override@JsonKey() final  FavoriteListStatus status;
 final  List<MealEntity> _meals;
@override@JsonKey() List<MealEntity> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}

@override final  String? errorMessage;

/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteListStateCopyWith<_FavoriteListState> get copyWith => __$FavoriteListStateCopyWithImpl<_FavoriteListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._meals, _meals)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_meals),errorMessage);

@override
String toString() {
  return 'FavoriteListState(status: $status, meals: $meals, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FavoriteListStateCopyWith<$Res> implements $FavoriteListStateCopyWith<$Res> {
  factory _$FavoriteListStateCopyWith(_FavoriteListState value, $Res Function(_FavoriteListState) _then) = __$FavoriteListStateCopyWithImpl;
@override @useResult
$Res call({
 FavoriteListStatus status, List<MealEntity> meals, String? errorMessage
});




}
/// @nodoc
class __$FavoriteListStateCopyWithImpl<$Res>
    implements _$FavoriteListStateCopyWith<$Res> {
  __$FavoriteListStateCopyWithImpl(this._self, this._then);

  final _FavoriteListState _self;
  final $Res Function(_FavoriteListState) _then;

/// Create a copy of FavoriteListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? meals = null,Object? errorMessage = freezed,}) {
  return _then(_FavoriteListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteListStatus,meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<MealEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
