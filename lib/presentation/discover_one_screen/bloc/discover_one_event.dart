// ignore_for_file: must_be_immutable

part of 'discover_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DiscoverOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscoverOneEvent extends Equatable {}

/// Event that is dispatched when the DiscoverOne widget is first created.
class DiscoverOneInitialEvent extends DiscoverOneEvent {
  @override
  List<Object?> get props => [];
}
