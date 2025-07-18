import 'package:flutter/material.dart';
import 'package:flutter_assessment/blocs/auth/auth_bloc.dart';
import 'package:flutter_assessment/configs/bloc/state.dart';
import 'package:flutter_assessment/routes/routes.dart';
import 'package:flutter_assessment/widgets/form/password_field.dart';
import 'package:flutter_assessment/widgets/loader/loader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginFormKey = GlobalKey<FormBuilderState>();

    final authBloc = context.read<AuthBloc>();


    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) => previous.login != current.login,
        buildWhen: (previous, current) => previous.login != current.login,
        listener: (context, state) {
          final loginState = state.login;

          final isSuccess = loginState.isSuccess;
          final isFailure = loginState.isFailure;

          if (isFailure) {
            loginState as ViewStateError;
            final errorMsg = loginState.failure.errorMessage;
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(errorMsg)));
          }

          if (isSuccess) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.home,
                  (Route<dynamic> route) => false,
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FormBuilder(
                  key: loginFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FormBuilderTextField(
                        name: 'email',
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter your email address',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email(),
                        ]),
                      ),
                      const SizedBox(height: 10),
                      const PasswordField(name: 'password'),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          final formState = loginFormKey.currentState;
                          formState?.saveAndValidate();
                          if (formState?.isValid == false) return;

                          // closes keyboard
                          FocusScope.of(context).unfocus();

                          // call login event
                          final email = formState?.value['email'] as String;
                          final password = formState?.value['password'] as String;

                          authBloc.add(AuthEvent.login(email: email, password: password));
                        },
                        child: const Text('Login'),
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.register),
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ),
              ),
              if (state.login.isLoading)
                const FullScreenLoader(),
            ],
          );
        },
      ),
    );
  }
}
