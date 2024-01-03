// ignore_for_file: must_be_immutable

part of 'check_out_three_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CheckOutThreeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckOutThreeTwoEvent extends Equatable {}

/// Event that is dispatched when the CheckOutThreeTwo widget is first created.
class CheckOutThreeTwoInitialEvent extends CheckOutThreeTwoEvent {
  @override
  List<Object?> get props => [];
}
