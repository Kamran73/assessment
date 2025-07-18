import 'package:flutter/material.dart';
import 'package:flutter_assessment/blocs/auth/auth_bloc.dart';
import 'package:flutter_assessment/configs/bloc/state.dart';
import 'package:flutter_assessment/configs/extensions/build_context.dart';
import 'package:flutter_assessment/routes/routes.dart';
import 'package:flutter_assessment/widgets/form/password_field.dart';
import 'package:flutter_assessment/widgets/loader/loader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final registerFormKey = GlobalKey<FormBuilderState>();

    final authBloc = context.read<AuthBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Register'), centerTitle: true),
      body: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (prev, curr) => prev.register != curr.register,
        buildWhen: (prev, curr) => prev.register != curr.register,
        listener: (context, state) {
          final registerState = state.register;

          final isSuccess = registerState.isSuccess;
          final isFailure = registerState.isFailure;

          if (isFailure) {
            registerState as ViewStateError;
            final errorMsg = registerState.failure.errorMessage;
            context.showSnackBar(errorMsg);
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
                  key: registerFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          final formState = registerFormKey.currentState;
                          formState?.saveAndValidate();
                          if (formState?.isValid == false) return;

                          // closes keyboard
                          FocusScope.of(context).unfocus();

                          // call register event
                          final email = formState?.value['email'] as String;
                          final password =
                              formState?.value['password'] as String;
                          authBloc.add(
                            AuthEvent.register(
                              email: email,
                              password: password,
                            ),
                          );
                        },
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ),
              ),
              if (state.register.isLoading) const FullScreenLoader(),
            ],
          );
        },
      ),
    );
  }
}
