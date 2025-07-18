part of 'task_bloc.dart';

@freezed
abstract class TaskEvent with _$TaskEvent {
  const factory TaskEvent.fetchTasks() = _FetchTasks;
  const factory TaskEvent.addTask({required Map<String, dynamic> taskDetails}) = _AddTask;
  const factory TaskEvent.removeTask(String id) = _RemoveTask;
  const factory TaskEvent.updateTask({required Map<String, dynamic> updatedDetails}) = _UpdateTask;
}
