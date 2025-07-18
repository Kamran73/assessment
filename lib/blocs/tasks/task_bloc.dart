import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_assessment/configs/bloc/failure.dart';
import 'package:flutter_assessment/configs/bloc/state.dart';
import 'package:flutter_assessment/models/task/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_event.dart';

part 'task_state.dart';

part 'task_bloc.freezed.dart';

part 'data_provider.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<_AddTask>((event, emit) async {
      try {
        emit(state.copyWith(addTask: const ViewStateLoading()));

        final task = await _DataProvider.addTask(payload: event.taskDetails);

        final updatedTasksList = List<Task>.from(state.tasks)..add(task);
        emit(
          state.copyWith(
            addTask: const ViewStateSuccess(),
            tasks: updatedTasksList,
          ),
        );
      } on Failure catch (e) {
        emit(state.copyWith(addTask: ViewStateError(e)));
      }
    });

    on<_FetchTasks>((event, emit) async {
      try {
        emit(state.copyWith(fetchTasks: const ViewStateLoading()));

        final tasks = await _DataProvider.fetchTasks();
        emit(
          state.copyWith(
            fetchTasks: const ViewStateSuccess(),
            tasks: tasks,
          ),
        );
      } on Failure catch (e) {
        emit(state.copyWith(fetchTasks: ViewStateError(e)));
      }
    });

    on<_RemoveTask>((event, emit) async {
      try {
        emit(state.copyWith(removeTask: const ViewStateLoading()));

        await _DataProvider.deleteTaskById(event.id);
        final updatedTasks = List<Task>.from(state.tasks);
        updatedTasks.removeWhere((task) => task.id == event.id,);
        emit(
          state.copyWith(
            removeTask: const ViewStateSuccess(),
            tasks: updatedTasks,
          ),
        );
      } on Failure catch (e) {
        emit(state.copyWith(removeTask: ViewStateError(e)));
      }
    });


    on<_UpdateTask>((event, emit) async {
      try {
        emit(state.copyWith(updateTask: const ViewStateLoading()));

        await _DataProvider.updateTask(payload: event.updatedDetails);

        final updatedTask = Task.fromJson(event.updatedDetails);

        final updatedTasks = List<Task>.from(state.tasks);
        final indexOfUpdatedTask = updatedTasks.indexWhere((task) => task.id == updatedTask.id,);

        updatedTasks[indexOfUpdatedTask] = updatedTask;
        emit(
          state.copyWith(
            updateTask: const ViewStateSuccess(),
            tasks: updatedTasks,
          ),
        );
      } on Failure catch (e) {
        emit(state.copyWith(updateTask: ViewStateError(e)));
      }
    });
  }
}
