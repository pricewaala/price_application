// ignore_for_file: must_be_immutable

part of 'my_orders_one_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersOneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersOneOneEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersOneOne widget is first created.
class MyOrdersOneOneInitialEvent extends MyOrdersOneOneEvent {
  @override
  List<Object?> get props => [];
}
