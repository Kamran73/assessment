part of '../home.dart';

class _TaskBottomSheet extends StatefulWidget {
  const _TaskBottomSheet({this.task});

  final Task? task;

  @override
  State<_TaskBottomSheet> createState() => _TaskBottomSheetState();
}

class _TaskBottomSheetState extends State<_TaskBottomSheet> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listenWhen:
          (previous, current) =>
              previous.addTask != current.addTask ||
              previous.updateTask != current.updateTask,
      listener: (context, state) {
        final isLoading = state.addTask.isLoading || state.updateTask.isLoading;
        final isFailure = state.addTask.isFailure || state.updateTask.isFailure;
        final isSuccess = state.addTask.isSuccess || state.updateTask.isSuccess;

        if (isLoading) {
          // show loading
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );
        }

        if (isSuccess) {
          Navigator.pop(context); // closes loading modal
          Navigator.pop(context); // closes add task bottomSheet
        }

        if (isFailure) {
          Navigator.pop(context); // closes loading modal

          Failure error;
          if (state.updateTask.isFailure) {
            error = (state.updateTask as ViewStateError).failure;
          } else {
            error = (state.addTask as ViewStateError).failure;
          }
          context.showSnackBar(error.errorMessage);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Add New Task',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            FormBuilder(
              key: formKey,
              initialValue: {
                'title': widget.task?.title,
                'description': widget.task?.description,
              },
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'title',
                    decoration: const InputDecoration(labelText: 'Title'),
                    validator: FormBuilderValidators.minLength(3),
                  ),
                  const SizedBox(height: 10),
                  FormBuilderTextField(
                    name: 'description',
                    decoration: const InputDecoration(
                      labelText: 'Description (optional)',
                    ),
                    validator: FormBuilderValidators.maxLength(
                      300,
                      checkNullOrEmpty: false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  // closes keyboard
                  FocusScope.of(context).unfocus();

                  final taskBloc = context.read<TaskBloc>();

                  // create new task
                  if (widget.task == null) {
                    taskBloc.add(
                      TaskEvent.addTask(
                        taskDetails: formKey.currentState!.value,
                      ),
                    );
                  } else {
                    // update already created task
                    final formValues = formKey.currentState?.value;

                    final updatedTask = widget.task!.copyWith(
                      title: formValues?['title'],
                      description: formValues?['description'],
                    );
                    taskBloc.add(
                      TaskEvent.updateTask(
                        updatedDetails: updatedTask.toJson(),
                      ),
                    );
                  }
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
