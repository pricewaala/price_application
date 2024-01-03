// ignore_for_file: must_be_immutable

part of 'intro_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IntroSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IntroSixEvent extends Equatable {}

/// Event that is dispatched when the IntroSix widget is first created.
class IntroSixInitialEvent extends IntroSixEvent {
  @override
  List<Object?> get props => [];
}
