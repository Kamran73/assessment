import 'package:flutter_assessment/blocs/quote/quote_bloc.dart';
import 'package:flutter_assessment/blocs/tasks/task_bloc.dart';
import 'package:flutter_assessment/screens/home/home.dart';
import 'package:flutter_assessment/screens/login/login.dart';
import 'package:flutter_assessment/screens/register/register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  Routes._();

  static const String register = '/register';
  static const String login = '/login';
  static const String home = '/home';
}

final appRoutes = {
  Routes.login: (_) => const LoginScreen(),
  Routes.register: (_) => const RegisterScreen(),
  Routes.home:
      (_) => MultiBlocProvider(
        providers: [
          BlocProvider<TaskBloc>(
            create: (_) => TaskBloc()..add(const TaskEvent.fetchTasks()),
          ),
          BlocProvider<QuoteBloc>(
            create: (_) => QuoteBloc()..add(const QuoteEvent.getRandomQuote()),
          ),
        ],
        child: const HomeScreen(),
      ),
};
