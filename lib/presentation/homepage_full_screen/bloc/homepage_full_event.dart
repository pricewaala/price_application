// ignore_for_file: must_be_immutable

part of 'homepage_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFullEvent extends Equatable {}

/// Event that is dispatched when the HomepageFull widget is first created.
class HomepageFullInitialEvent extends HomepageFullEvent {
  @override
  List<Object?> get props => [];
}
