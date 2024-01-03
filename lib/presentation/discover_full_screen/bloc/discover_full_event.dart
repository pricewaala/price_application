// ignore_for_file: must_be_immutable

part of 'discover_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DiscoverFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DiscoverFullEvent extends Equatable {}

/// Event that is dispatched when the DiscoverFull widget is first created.
class DiscoverFullInitialEvent extends DiscoverFullEvent {
  @override
  List<Object?> get props => [];
}
