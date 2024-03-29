// ignore_for_file: must_be_immutable

part of 'log_in_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogInOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogInOneEvent extends Equatable {}

/// Event that is dispatched when the LogInOne widget is first created.
class LogInOneInitialEvent extends LogInOneEvent {
  @override
  List<Object?> get props => [];
}
