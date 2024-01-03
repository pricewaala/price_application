// ignore_for_file: must_be_immutable

part of 'welcome_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeTwoEvent extends Equatable {}

/// Event that is dispatched when the WelcomeTwo widget is first created.
class WelcomeTwoInitialEvent extends WelcomeTwoEvent {
  @override
  List<Object?> get props => [];
}
