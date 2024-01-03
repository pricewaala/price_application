// ignore_for_file: must_be_immutable

part of 'sign_up_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpTwoEvent extends Equatable {}

/// Event that is dispatched when the SignUpTwo widget is first created.
class SignUpTwoInitialEvent extends SignUpTwoEvent {
  @override
  List<Object?> get props => [];
}
