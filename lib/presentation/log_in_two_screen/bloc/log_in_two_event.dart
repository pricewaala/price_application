// ignore_for_file: must_be_immutable

part of 'log_in_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogInTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogInTwoEvent extends Equatable {}

/// Event that is dispatched when the LogInTwo widget is first created.
class LogInTwoInitialEvent extends LogInTwoEvent {
  @override
  List<Object?> get props => [];
}
