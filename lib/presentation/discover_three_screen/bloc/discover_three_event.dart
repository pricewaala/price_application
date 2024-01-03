// ignore_for_file: must_be_immutable

part of 'discover_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DiscoverThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscoverThreeEvent extends Equatable {}

/// Event that is dispatched when the DiscoverThree widget is first created.
class DiscoverThreeInitialEvent extends DiscoverThreeEvent {
  @override
  List<Object?> get props => [];
}
