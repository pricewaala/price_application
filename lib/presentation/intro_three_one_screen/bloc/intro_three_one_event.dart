// ignore_for_file: must_be_immutable

part of 'intro_three_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroThreeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroThreeOneEvent extends Equatable {}

/// Event that is dispatched when the IntroThreeOne widget is first created.
class IntroThreeOneInitialEvent extends IntroThreeOneEvent {
  @override
  List<Object?> get props => [];
}
