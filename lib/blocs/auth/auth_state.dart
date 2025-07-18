part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(ViewStateInitial<void>()) ViewState<void> register,
    @Default(ViewStateInitial<void>()) ViewState<void> login,
    @Default(ViewStateInitial<void>()) ViewState<void> logout,
  }) = _AuthState;
}
