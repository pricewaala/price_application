// ignore_for_file: must_be_immutable

part of 'password_changed_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PasswordChangedOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PasswordChangedOneEvent extends Equatable {}

/// Event that is dispatched when the PasswordChangedOne widget is first created.
class PasswordChangedOneInitialEvent extends PasswordChangedOneEvent {
  @override
  List<Object?> get props => [];
}
