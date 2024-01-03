// ignore_for_file: must_be_immutable

part of 'create_new_password_two1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPasswordTwo1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPasswordTwo1Event extends Equatable {}

/// Event that is dispatched when the CreateNewPasswordTwo1 widget is first created.
class CreateNewPasswordTwo1InitialEvent extends CreateNewPasswordTwo1Event {
  @override
  List<Object?> get props => [];
}
