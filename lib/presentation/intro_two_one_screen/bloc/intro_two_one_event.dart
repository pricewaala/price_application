// ignore_for_file: must_be_immutable

part of 'intro_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroTwoOneEvent extends Equatable {}

/// Event that is dispatched when the IntroTwoOne widget is first created.
class IntroTwoOneInitialEvent extends IntroTwoOneEvent {
  @override
  List<Object?> get props => [];
}
