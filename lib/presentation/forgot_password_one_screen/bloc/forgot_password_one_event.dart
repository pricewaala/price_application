// ignore_for_file: must_be_immutable

part of 'forgot_password_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordOneEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordOne widget is first created.
class ForgotPasswordOneInitialEvent extends ForgotPasswordOneEvent {
  @override
  List<Object?> get props => [];
}
