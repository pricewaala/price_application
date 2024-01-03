// ignore_for_file: must_be_immutable

part of 'sign_up_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpOneEvent extends Equatable {}

/// Event that is dispatched when the SignUpOne widget is first created.
class SignUpOneInitialEvent extends SignUpOneEvent {
  @override
  List<Object?> get props => [];
}
