// ignore_for_file: must_be_immutable

part of 'create_new_password_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPasswordTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPasswordTwoOneEvent extends Equatable {}

/// Event that is dispatched when the CreateNewPasswordTwoOne widget is first created.
class CreateNewPasswordTwoOneInitialEvent extends CreateNewPasswordTwoOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateNewPasswordTwoOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CreateNewPasswordTwoOneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
