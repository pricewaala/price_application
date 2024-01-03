// ignore_for_file: must_be_immutable

part of 'forgot_password_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordTwoEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordTwo widget is first created.
class ForgotPasswordTwoInitialEvent extends ForgotPasswordTwoEvent {
  @override
  List<Object?> get props => [];
}
