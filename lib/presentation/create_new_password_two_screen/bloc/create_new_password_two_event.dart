// ignore_for_file: must_be_immutable

part of 'create_new_password_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPasswordTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPasswordTwoEvent extends Equatable {}

/// Event that is dispatched when the CreateNewPasswordTwo widget is first created.
class CreateNewPasswordTwoInitialEvent extends CreateNewPasswordTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateNewPasswordTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CreateNewPasswordTwoEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
