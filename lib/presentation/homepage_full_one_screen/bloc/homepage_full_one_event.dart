// ignore_for_file: must_be_immutable

part of 'homepage_full_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFullOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFullOneEvent extends Equatable {}

/// Event that is dispatched when the HomepageFullOne widget is first created.
class HomepageFullOneInitialEvent extends HomepageFullOneEvent {
  @override
  List<Object?> get props => [];
}
