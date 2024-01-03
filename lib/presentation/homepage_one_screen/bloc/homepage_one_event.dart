// ignore_for_file: must_be_immutable

part of 'homepage_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageOneEvent extends Equatable {}

/// Event that is dispatched when the HomepageOne widget is first created.
class HomepageOneInitialEvent extends HomepageOneEvent {
  @override
  List<Object?> get props => [];
}
