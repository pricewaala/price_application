// ignore_for_file: must_be_immutable

part of 'track_order_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrackOrderTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrackOrderTwoEvent extends Equatable {}

/// Event that is dispatched when the TrackOrderTwo widget is first created.
class TrackOrderTwoInitialEvent extends TrackOrderTwoEvent {
  @override
  List<Object?> get props => [];
}
