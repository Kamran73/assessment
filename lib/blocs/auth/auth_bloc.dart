import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_assessment/configs/bloc/failure.dart';
import 'package:flutter_assessment/configs/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
part 'data_provider.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    // register event
    on<_Register>((event, emit) async {
      try {
        emit(state.copyWith(register: const ViewStateLoading()));

        await _DataProvider.register(
          email: event.email,
          password: event.password,
        );
        emit(state.copyWith(register: const ViewStateSuccess()));
      } on Failure catch (e) {
        emit(state.copyWith(register: ViewStateError(e)));
      }
    });

    // login event
    on<_Login>((event, emit) async {
      try {
        emit(state.copyWith(login: const ViewStateLoading()));

        await _DataProvider.login(email: event.email, password: event.password);
        emit(state.copyWith(login: const ViewStateSuccess()));
      } on Failure catch (e) {
        emit(state.copyWith(login: ViewStateError(e)));
      }
    });

    // logout event
    on<_Logout>((event, emit) async {
      try {
        emit(state.copyWith(logout: const ViewStateLoading()));
        await _DataProvider.logout();
        emit(state.copyWith(logout: const ViewStateSuccess()));
      } on Failure catch (e) {
        emit(state.copyWith(logout: ViewStateError(e)));
      }
    });
  }
}
