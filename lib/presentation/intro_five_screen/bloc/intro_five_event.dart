// ignore_for_file: must_be_immutable

part of 'intro_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroFiveEvent extends Equatable {}

/// Event that is dispatched when the IntroFive widget is first created.
class IntroFiveInitialEvent extends IntroFiveEvent {
  @override
  List<Object?> get props => [];
}
