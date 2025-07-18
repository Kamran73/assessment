part of '../home.dart';

class _TasksBody extends StatelessWidget {
  const _TasksBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        final tasksBloc = context.read<TaskBloc>();
        final fetchState = state.fetchTasks;

        final tasks = state.tasks;

        if (fetchState.isFailure) {
          fetchState as ViewStateError;
          final errorMsg = fetchState.failure.errorMessage;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  errorMsg,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  tasksBloc.add(const TaskEvent.fetchTasks());
                },
                icon: const Icon(Icons.refresh),
              ),
            ],
          );
        }

        if (fetchState.isSuccess && tasks.isEmpty) {
          return const Center(child: Text('There are no tasks available'));
        }

        if (fetchState.isSuccess && tasks.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return _TaskTile(task: tasks[index]);
              },
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _TaskTile extends StatelessWidget {
  const _TaskTile({required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    final taskBloc = context.read<TaskBloc>();

    return ListTile(
      leading: Checkbox(
        value: task.isDone,
        onChanged: (value) {
          final payload = task.toJson();
          payload['isDone'] = value ?? !task.isDone;
          taskBloc.add(TaskEvent.updateTask(updatedDetails: payload));
        },
      ),
      title: Text(
        task.title,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: task.description != null ? Text(task.description!) : null,
      onLongPress: () {
        taskBloc.add(TaskEvent.removeTask(task.id));
      },
      trailing: TextButton(
        onPressed: () {
          showTaskSheet(context, task);
        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  void showTaskSheet(BuildContext context, Task task) {
    final taskBloc = context.read<TaskBloc>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return BlocProvider<TaskBloc>.value(
          value: taskBloc,
          child: _TaskBottomSheet(task: task),
        );
      },
    );
  }
}
