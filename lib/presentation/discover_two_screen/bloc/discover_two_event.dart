// ignore_for_file: must_be_immutable

part of 'discover_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DiscoverTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscoverTwoEvent extends Equatable {}

/// Event that is dispatched when the DiscoverTwo widget is first created.
class DiscoverTwoInitialEvent extends DiscoverTwoEvent {
  @override
  List<Object?> get props => [];
}
