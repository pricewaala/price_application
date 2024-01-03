// ignore_for_file: must_be_immutable

part of 'homepage_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageTwoEvent extends Equatable {}

/// Event that is dispatched when the HomepageTwo widget is first created.
class HomepageTwoInitialEvent extends HomepageTwoEvent {
  @override
  List<Object?> get props => [];
}
