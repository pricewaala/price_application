// ignore_for_file: must_be_immutable

part of 'intro_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroFourEvent extends Equatable {}

/// Event that is dispatched when the IntroFour widget is first created.
class IntroFourInitialEvent extends IntroFourEvent {
  @override
  List<Object?> get props => [];
}
