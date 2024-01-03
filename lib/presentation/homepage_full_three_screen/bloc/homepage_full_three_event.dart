// ignore_for_file: must_be_immutable

part of 'homepage_full_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFullThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFullThreeEvent extends Equatable {}

/// Event that is dispatched when the HomepageFullThree widget is first created.
class HomepageFullThreeInitialEvent extends HomepageFullThreeEvent {
  @override
  List<Object?> get props => [];
}
