// ignore_for_file: must_be_immutable

part of 'welcome_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeOneEvent extends Equatable {}

/// Event that is dispatched when the WelcomeOne widget is first created.
class WelcomeOneInitialEvent extends WelcomeOneEvent {
  @override
  List<Object?> get props => [];
}
