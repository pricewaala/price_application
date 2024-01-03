// ignore_for_file: must_be_immutable

part of 'my_orders_three_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersThreeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersThreeTwoEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersThreeTwo widget is first created.
class MyOrdersThreeTwoInitialEvent extends MyOrdersThreeTwoEvent {
  @override
  List<Object?> get props => [];
}
