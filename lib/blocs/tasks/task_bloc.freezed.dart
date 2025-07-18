// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent()';
}


}

/// @nodoc
class $TaskEventCopyWith<$Res>  {
$TaskEventCopyWith(TaskEvent _, $Res Function(TaskEvent) __);
}


/// Adds pattern-matching-related methods to [TaskEvent].
extension TaskEventPatterns on TaskEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchTasks value)?  fetchTasks,TResult Function( _AddTask value)?  addTask,TResult Function( _RemoveTask value)?  removeTask,TResult Function( _UpdateTask value)?  updateTask,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchTasks() when fetchTasks != null:
return fetchTasks(_that);case _AddTask() when addTask != null:
return addTask(_that);case _RemoveTask() when removeTask != null:
return removeTask(_that);case _UpdateTask() when updateTask != null:
return updateTask(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchTasks value)  fetchTasks,required TResult Function( _AddTask value)  addTask,required TResult Function( _RemoveTask value)  removeTask,required TResult Function( _UpdateTask value)  updateTask,}){
final _that = this;
switch (_that) {
case _FetchTasks():
return fetchTasks(_that);case _AddTask():
return addTask(_that);case _RemoveTask():
return removeTask(_that);case _UpdateTask():
return updateTask(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchTasks value)?  fetchTasks,TResult? Function( _AddTask value)?  addTask,TResult? Function( _RemoveTask value)?  removeTask,TResult? Function( _UpdateTask value)?  updateTask,}){
final _that = this;
switch (_that) {
case _FetchTasks() when fetchTasks != null:
return fetchTasks(_that);case _AddTask() when addTask != null:
return addTask(_that);case _RemoveTask() when removeTask != null:
return removeTask(_that);case _UpdateTask() when updateTask != null:
return updateTask(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchTasks,TResult Function( Map<String, dynamic> taskDetails)?  addTask,TResult Function( String id)?  removeTask,TResult Function( Map<String, dynamic> updatedDetails)?  updateTask,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchTasks() when fetchTasks != null:
return fetchTasks();case _AddTask() when addTask != null:
return addTask(_that.taskDetails);case _RemoveTask() when removeTask != null:
return removeTask(_that.id);case _UpdateTask() when updateTask != null:
return updateTask(_that.updatedDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchTasks,required TResult Function( Map<String, dynamic> taskDetails)  addTask,required TResult Function( String id)  removeTask,required TResult Function( Map<String, dynamic> updatedDetails)  updateTask,}) {final _that = this;
switch (_that) {
case _FetchTasks():
return fetchTasks();case _AddTask():
return addTask(_that.taskDetails);case _RemoveTask():
return removeTask(_that.id);case _UpdateTask():
return updateTask(_that.updatedDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchTasks,TResult? Function( Map<String, dynamic> taskDetails)?  addTask,TResult? Function( String id)?  removeTask,TResult? Function( Map<String, dynamic> updatedDetails)?  updateTask,}) {final _that = this;
switch (_that) {
case _FetchTasks() when fetchTasks != null:
return fetchTasks();case _AddTask() when addTask != null:
return addTask(_that.taskDetails);case _RemoveTask() when removeTask != null:
return removeTask(_that.id);case _UpdateTask() when updateTask != null:
return updateTask(_that.updatedDetails);case _:
  return null;

}
}

}

/// @nodoc


class _FetchTasks implements TaskEvent {
  const _FetchTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.fetchTasks()';
}


}




/// @nodoc


class _AddTask implements TaskEvent {
  const _AddTask({required final  Map<String, dynamic> taskDetails}): _taskDetails = taskDetails;
  

 final  Map<String, dynamic> _taskDetails;
 Map<String, dynamic> get taskDetails {
  if (_taskDetails is EqualUnmodifiableMapView) return _taskDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_taskDetails);
}


/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTaskCopyWith<_AddTask> get copyWith => __$AddTaskCopyWithImpl<_AddTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTask&&const DeepCollectionEquality().equals(other._taskDetails, _taskDetails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_taskDetails));

@override
String toString() {
  return 'TaskEvent.addTask(taskDetails: $taskDetails)';
}


}

/// @nodoc
abstract mixin class _$AddTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$AddTaskCopyWith(_AddTask value, $Res Function(_AddTask) _then) = __$AddTaskCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> taskDetails
});




}
/// @nodoc
class __$AddTaskCopyWithImpl<$Res>
    implements _$AddTaskCopyWith<$Res> {
  __$AddTaskCopyWithImpl(this._self, this._then);

  final _AddTask _self;
  final $Res Function(_AddTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskDetails = null,}) {
  return _then(_AddTask(
taskDetails: null == taskDetails ? _self._taskDetails : taskDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class _RemoveTask implements TaskEvent {
  const _RemoveTask(this.id);
  

 final  String id;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveTaskCopyWith<_RemoveTask> get copyWith => __$RemoveTaskCopyWithImpl<_RemoveTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveTask&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TaskEvent.removeTask(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RemoveTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$RemoveTaskCopyWith(_RemoveTask value, $Res Function(_RemoveTask) _then) = __$RemoveTaskCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$RemoveTaskCopyWithImpl<$Res>
    implements _$RemoveTaskCopyWith<$Res> {
  __$RemoveTaskCopyWithImpl(this._self, this._then);

  final _RemoveTask _self;
  final $Res Function(_RemoveTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_RemoveTask(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateTask implements TaskEvent {
  const _UpdateTask({required final  Map<String, dynamic> updatedDetails}): _updatedDetails = updatedDetails;
  

 final  Map<String, dynamic> _updatedDetails;
 Map<String, dynamic> get updatedDetails {
  if (_updatedDetails is EqualUnmodifiableMapView) return _updatedDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_updatedDetails);
}


/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTaskCopyWith<_UpdateTask> get copyWith => __$UpdateTaskCopyWithImpl<_UpdateTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTask&&const DeepCollectionEquality().equals(other._updatedDetails, _updatedDetails));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_updatedDetails));

@override
String toString() {
  return 'TaskEvent.updateTask(updatedDetails: $updatedDetails)';
}


}

/// @nodoc
abstract mixin class _$UpdateTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$UpdateTaskCopyWith(_UpdateTask value, $Res Function(_UpdateTask) _then) = __$UpdateTaskCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> updatedDetails
});




}
/// @nodoc
class __$UpdateTaskCopyWithImpl<$Res>
    implements _$UpdateTaskCopyWith<$Res> {
  __$UpdateTaskCopyWithImpl(this._self, this._then);

  final _UpdateTask _self;
  final $Res Function(_UpdateTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updatedDetails = null,}) {
  return _then(_UpdateTask(
updatedDetails: null == updatedDetails ? _self._updatedDetails : updatedDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc
mixin _$TaskState {

 ViewState<void> get fetchTasks; ViewState<void> get removeTask; ViewState<void> get updateTask; ViewState<void> get addTask; List<Task> get tasks;
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskStateCopyWith<TaskState> get copyWith => _$TaskStateCopyWithImpl<TaskState>(this as TaskState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState&&(identical(other.fetchTasks, fetchTasks) || other.fetchTasks == fetchTasks)&&(identical(other.removeTask, removeTask) || other.removeTask == removeTask)&&(identical(other.updateTask, updateTask) || other.updateTask == updateTask)&&(identical(other.addTask, addTask) || other.addTask == addTask)&&const DeepCollectionEquality().equals(other.tasks, tasks));
}


@override
int get hashCode => Object.hash(runtimeType,fetchTasks,removeTask,updateTask,addTask,const DeepCollectionEquality().hash(tasks));

@override
String toString() {
  return 'TaskState(fetchTasks: $fetchTasks, removeTask: $removeTask, updateTask: $updateTask, addTask: $addTask, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $TaskStateCopyWith<$Res>  {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) _then) = _$TaskStateCopyWithImpl;
@useResult
$Res call({
 ViewState<void> fetchTasks, ViewState<void> removeTask, ViewState<void> updateTask, ViewState<void> addTask, List<Task> tasks
});




}
/// @nodoc
class _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._self, this._then);

  final TaskState _self;
  final $Res Function(TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fetchTasks = null,Object? removeTask = null,Object? updateTask = null,Object? addTask = null,Object? tasks = null,}) {
  return _then(_self.copyWith(
fetchTasks: null == fetchTasks ? _self.fetchTasks : fetchTasks // ignore: cast_nullable_to_non_nullable
as ViewState<void>,removeTask: null == removeTask ? _self.removeTask : removeTask // ignore: cast_nullable_to_non_nullable
as ViewState<void>,updateTask: null == updateTask ? _self.updateTask : updateTask // ignore: cast_nullable_to_non_nullable
as ViewState<void>,addTask: null == addTask ? _self.addTask : addTask // ignore: cast_nullable_to_non_nullable
as ViewState<void>,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskState].
extension TaskStatePatterns on TaskState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskState value)  $default,){
final _that = this;
switch (_that) {
case _TaskState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskState value)?  $default,){
final _that = this;
switch (_that) {
case _TaskState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewState<void> fetchTasks,  ViewState<void> removeTask,  ViewState<void> updateTask,  ViewState<void> addTask,  List<Task> tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskState() when $default != null:
return $default(_that.fetchTasks,_that.removeTask,_that.updateTask,_that.addTask,_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewState<void> fetchTasks,  ViewState<void> removeTask,  ViewState<void> updateTask,  ViewState<void> addTask,  List<Task> tasks)  $default,) {final _that = this;
switch (_that) {
case _TaskState():
return $default(_that.fetchTasks,_that.removeTask,_that.updateTask,_that.addTask,_that.tasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewState<void> fetchTasks,  ViewState<void> removeTask,  ViewState<void> updateTask,  ViewState<void> addTask,  List<Task> tasks)?  $default,) {final _that = this;
switch (_that) {
case _TaskState() when $default != null:
return $default(_that.fetchTasks,_that.removeTask,_that.updateTask,_that.addTask,_that.tasks);case _:
  return null;

}
}

}

/// @nodoc


class _TaskState implements TaskState {
  const _TaskState({this.fetchTasks = const ViewStateInitial<void>(), this.removeTask = const ViewStateInitial<void>(), this.updateTask = const ViewStateInitial<void>(), this.addTask = const ViewStateInitial<void>(), final  List<Task> tasks = const []}): _tasks = tasks;
  

@override@JsonKey() final  ViewState<void> fetchTasks;
@override@JsonKey() final  ViewState<void> removeTask;
@override@JsonKey() final  ViewState<void> updateTask;
@override@JsonKey() final  ViewState<void> addTask;
 final  List<Task> _tasks;
@override@JsonKey() List<Task> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskStateCopyWith<_TaskState> get copyWith => __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskState&&(identical(other.fetchTasks, fetchTasks) || other.fetchTasks == fetchTasks)&&(identical(other.removeTask, removeTask) || other.removeTask == removeTask)&&(identical(other.updateTask, updateTask) || other.updateTask == updateTask)&&(identical(other.addTask, addTask) || other.addTask == addTask)&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,fetchTasks,removeTask,updateTask,addTask,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'TaskState(fetchTasks: $fetchTasks, removeTask: $removeTask, updateTask: $updateTask, addTask: $addTask, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(_TaskState value, $Res Function(_TaskState) _then) = __$TaskStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState<void> fetchTasks, ViewState<void> removeTask, ViewState<void> updateTask, ViewState<void> addTask, List<Task> tasks
});




}
/// @nodoc
class __$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(this._self, this._then);

  final _TaskState _self;
  final $Res Function(_TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fetchTasks = null,Object? removeTask = null,Object? updateTask = null,Object? addTask = null,Object? tasks = null,}) {
  return _then(_TaskState(
fetchTasks: null == fetchTasks ? _self.fetchTasks : fetchTasks // ignore: cast_nullable_to_non_nullable
as ViewState<void>,removeTask: null == removeTask ? _self.removeTask : removeTask // ignore: cast_nullable_to_non_nullable
as ViewState<void>,updateTask: null == updateTask ? _self.updateTask : updateTask // ignore: cast_nullable_to_non_nullable
as ViewState<void>,addTask: null == addTask ? _self.addTask : addTask // ignore: cast_nullable_to_non_nullable
as ViewState<void>,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,
  ));
}


}

// dart format on
