import 'package:fin_dall/core/error/failure.dart';

sealed class ControllerState<T> {
  const ControllerState();
}

final class ControllerStateInitial<T> extends ControllerState<T> {
  const ControllerStateInitial();
}

final class ControllerStateLoading<T> extends ControllerState<T> {
  const ControllerStateLoading();
}

final class ControllerStateData<T> extends ControllerState<T> {
  final T data;

  const ControllerStateData(this.data);
}

final class ControllerStateError<T> extends ControllerState<T> {
  final Failure error;

  const ControllerStateError(this.error);
}
