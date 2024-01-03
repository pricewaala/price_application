// ignore_for_file: must_be_immutable

part of 'password_changed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PasswordChanged widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PasswordChangedEvent extends Equatable {}

/// Event that is dispatched when the PasswordChanged widget is first created.
class PasswordChangedInitialEvent extends PasswordChangedEvent {
  @override
  List<Object?> get props => [];
}
