// ignore_for_file: must_be_immutable

part of 'intro_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroOneEvent extends Equatable {}

/// Event that is dispatched when the IntroOne widget is first created.
class IntroOneInitialEvent extends IntroOneEvent {
  @override
  List<Object?> get props => [];
}
