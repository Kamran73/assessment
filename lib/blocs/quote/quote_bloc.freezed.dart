// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuoteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuoteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuoteEvent()';
}


}

/// @nodoc
class $QuoteEventCopyWith<$Res>  {
$QuoteEventCopyWith(QuoteEvent _, $Res Function(QuoteEvent) __);
}


/// Adds pattern-matching-related methods to [QuoteEvent].
extension QuoteEventPatterns on QuoteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetRandomQuote value)?  getRandomQuote,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetRandomQuote() when getRandomQuote != null:
return getRandomQuote(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetRandomQuote value)  getRandomQuote,}){
final _that = this;
switch (_that) {
case _GetRandomQuote():
return getRandomQuote(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetRandomQuote value)?  getRandomQuote,}){
final _that = this;
switch (_that) {
case _GetRandomQuote() when getRandomQuote != null:
return getRandomQuote(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getRandomQuote,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetRandomQuote() when getRandomQuote != null:
return getRandomQuote();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getRandomQuote,}) {final _that = this;
switch (_that) {
case _GetRandomQuote():
return getRandomQuote();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getRandomQuote,}) {final _that = this;
switch (_that) {
case _GetRandomQuote() when getRandomQuote != null:
return getRandomQuote();case _:
  return null;

}
}

}

/// @nodoc


class _GetRandomQuote implements QuoteEvent {
  const _GetRandomQuote();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRandomQuote);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuoteEvent.getRandomQuote()';
}


}




/// @nodoc
mixin _$QuoteState {

 ViewState<Quote> get getQuote;
/// Create a copy of QuoteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuoteStateCopyWith<QuoteState> get copyWith => _$QuoteStateCopyWithImpl<QuoteState>(this as QuoteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuoteState&&(identical(other.getQuote, getQuote) || other.getQuote == getQuote));
}


@override
int get hashCode => Object.hash(runtimeType,getQuote);

@override
String toString() {
  return 'QuoteState(getQuote: $getQuote)';
}


}

/// @nodoc
abstract mixin class $QuoteStateCopyWith<$Res>  {
  factory $QuoteStateCopyWith(QuoteState value, $Res Function(QuoteState) _then) = _$QuoteStateCopyWithImpl;
@useResult
$Res call({
 ViewState<Quote> getQuote
});




}
/// @nodoc
class _$QuoteStateCopyWithImpl<$Res>
    implements $QuoteStateCopyWith<$Res> {
  _$QuoteStateCopyWithImpl(this._self, this._then);

  final QuoteState _self;
  final $Res Function(QuoteState) _then;

/// Create a copy of QuoteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? getQuote = null,}) {
  return _then(_self.copyWith(
getQuote: null == getQuote ? _self.getQuote : getQuote // ignore: cast_nullable_to_non_nullable
as ViewState<Quote>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuoteState].
extension QuoteStatePatterns on QuoteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuoteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuoteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuoteState value)  $default,){
final _that = this;
switch (_that) {
case _QuoteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuoteState value)?  $default,){
final _that = this;
switch (_that) {
case _QuoteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewState<Quote> getQuote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuoteState() when $default != null:
return $default(_that.getQuote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewState<Quote> getQuote)  $default,) {final _that = this;
switch (_that) {
case _QuoteState():
return $default(_that.getQuote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewState<Quote> getQuote)?  $default,) {final _that = this;
switch (_that) {
case _QuoteState() when $default != null:
return $default(_that.getQuote);case _:
  return null;

}
}

}

/// @nodoc


class _QuoteState implements QuoteState {
  const _QuoteState({this.getQuote = const ViewStateInitial<Quote>()});
  

@override@JsonKey() final  ViewState<Quote> getQuote;

/// Create a copy of QuoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuoteStateCopyWith<_QuoteState> get copyWith => __$QuoteStateCopyWithImpl<_QuoteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuoteState&&(identical(other.getQuote, getQuote) || other.getQuote == getQuote));
}


@override
int get hashCode => Object.hash(runtimeType,getQuote);

@override
String toString() {
  return 'QuoteState(getQuote: $getQuote)';
}


}

/// @nodoc
abstract mixin class _$QuoteStateCopyWith<$Res> implements $QuoteStateCopyWith<$Res> {
  factory _$QuoteStateCopyWith(_QuoteState value, $Res Function(_QuoteState) _then) = __$QuoteStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState<Quote> getQuote
});




}
/// @nodoc
class __$QuoteStateCopyWithImpl<$Res>
    implements _$QuoteStateCopyWith<$Res> {
  __$QuoteStateCopyWithImpl(this._self, this._then);

  final _QuoteState _self;
  final $Res Function(_QuoteState) _then;

/// Create a copy of QuoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? getQuote = null,}) {
  return _then(_QuoteState(
getQuote: null == getQuote ? _self.getQuote : getQuote // ignore: cast_nullable_to_non_nullable
as ViewState<Quote>,
  ));
}


}

// dart format on
