part of 'task_bloc.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState({
    @Default(ViewStateInitial<void>()) ViewState<void> fetchTasks,
    @Default(ViewStateInitial<void>()) ViewState<void> removeTask,
    @Default(ViewStateInitial<void>()) ViewState<void> updateTask,
    @Default(ViewStateInitial<void>()) ViewState<void> addTask,
    @Default([]) List<Task> tasks,
  }) = _TaskState;
}
