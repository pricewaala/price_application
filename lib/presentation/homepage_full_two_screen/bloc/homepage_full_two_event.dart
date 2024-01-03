// ignore_for_file: must_be_immutable

part of 'homepage_full_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFullTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFullTwoEvent extends Equatable {}

/// Event that is dispatched when the HomepageFullTwo widget is first created.
class HomepageFullTwoInitialEvent extends HomepageFullTwoEvent {
  @override
  List<Object?> get props => [];
}
