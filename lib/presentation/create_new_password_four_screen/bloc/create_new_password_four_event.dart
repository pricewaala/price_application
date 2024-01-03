// ignore_for_file: must_be_immutable

part of 'create_new_password_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPasswordFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPasswordFourEvent extends Equatable {}

/// Event that is dispatched when the CreateNewPasswordFour widget is first created.
class CreateNewPasswordFourInitialEvent extends CreateNewPasswordFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateNewPasswordFourEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CreateNewPasswordFourEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
