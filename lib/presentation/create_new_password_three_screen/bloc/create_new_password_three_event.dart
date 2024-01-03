// ignore_for_file: must_be_immutable

part of 'create_new_password_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPasswordThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPasswordThreeEvent extends Equatable {}

/// Event that is dispatched when the CreateNewPasswordThree widget is first created.
class CreateNewPasswordThreeInitialEvent extends CreateNewPasswordThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateNewPasswordThreeEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CreateNewPasswordThreeEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
