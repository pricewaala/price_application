// ignore_for_file: must_be_immutable

part of 'my_orders_one_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersOneTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersOneTwoEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersOneTwo widget is first created.
class MyOrdersOneTwoInitialEvent extends MyOrdersOneTwoEvent {
  @override
  List<Object?> get props => [];
}
