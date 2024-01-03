// ignore_for_file: must_be_immutable

part of 'intro_one_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroOneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroOneOneEvent extends Equatable {}

/// Event that is dispatched when the IntroOneOne widget is first created.
class IntroOneOneInitialEvent extends IntroOneOneEvent {
  @override
  List<Object?> get props => [];
}
