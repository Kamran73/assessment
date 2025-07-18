import 'package:flutter/cupertino.dart';

import 'failure.dart';

@immutable
sealed class ViewState<T> {
  const ViewState();
}

final class ViewStateInitial<T> extends ViewState<T> {
  const ViewStateInitial();
}

final class ViewStateLoading<T> extends ViewState<T> {
  const ViewStateLoading();
}

final class ViewStateSuccess<T> extends ViewState<T> {
  final T? data;
  const ViewStateSuccess({this.data});
}

final class ViewStateError<T> extends ViewState<T> {
  final Failure failure;
  const ViewStateError(this.failure);
}

extension ViewStateExtensions<T> on ViewState<T> {
  bool get isLoading => this is ViewStateLoading<T>;

  bool get isSuccess => this is ViewStateSuccess<T>;

  bool get isFailure => this is ViewStateError<T>;

  bool get isInitial => this is ViewStateInitial<T>;
}