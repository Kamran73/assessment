import 'package:flutter/material.dart';
import 'package:flutter_assessment/blocs/auth/auth_bloc.dart';
import 'package:flutter_assessment/blocs/quote/quote_bloc.dart';
import 'package:flutter_assessment/blocs/tasks/task_bloc.dart';
import 'package:flutter_assessment/configs/bloc/failure.dart';
import 'package:flutter_assessment/configs/bloc/state.dart';
import 'package:flutter_assessment/configs/extensions/build_context.dart';
import 'package:flutter_assessment/models/qoute/quote.dart';
import 'package:flutter_assessment/models/task/task.dart';
import 'package:flutter_assessment/routes/routes.dart';
import 'package:flutter_assessment/widgets/loader/loader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

part 'widgets/_task_bottom_sheet.dart';
part 'widgets/_random_quote.dart';
part 'widgets/_tasks_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskBloc = context.watch<TaskBloc>();
    final taskState = taskBloc.state;

    final isLoading =
        taskState.fetchTasks.isLoading ||
        taskState.removeTask.isLoading ||
        taskState.updateTask.isLoading;

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text('Notes app'),
            centerTitle: true,
            actions: [const _LogoutButton()],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => showTaskSheet(context),
          ),
          body: const Column(
            children: [
              _RandomQuote(),
              SizedBox(height: 10),
              Expanded(child: _TasksBody()),
            ],
          ),
        ),
        if (isLoading) const FullScreenLoader(),
      ],
    );
  }

  void showTaskSheet(BuildContext context) {
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
          child: const _TaskBottomSheet(),
        );
      },
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton();

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (prev, curr) => prev.logout != curr.logout,
      listener: (context, state) {
        if (state.logout.isSuccess) {
          Navigator.pushReplacementNamed(context, Routes.login);
        }
      },
      child: IconButton(
        onPressed: () {
          authBloc.add(const AuthEvent.logout());
        },
        icon: const Icon(Icons.logout),
      ),
    );
  }
}
