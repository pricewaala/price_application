// ignore_for_file: must_be_immutable

part of 'track_order_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrackOrderOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrackOrderOneEvent extends Equatable {}

/// Event that is dispatched when the TrackOrderOne widget is first created.
class TrackOrderOneInitialEvent extends TrackOrderOneEvent {
  @override
  List<Object?> get props => [];
}
