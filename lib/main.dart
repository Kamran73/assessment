import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/blocs/auth/auth_bloc.dart';
import 'package:flutter_assessment/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final user = FirebaseAuth.instance.currentUser;

  runApp(
    BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Mini task manager',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routes: appRoutes,
        initialRoute: user == null ? Routes.login : Routes.home,
      ),
    ),
  );
}
