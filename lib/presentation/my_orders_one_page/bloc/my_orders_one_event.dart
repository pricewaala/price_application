// ignore_for_file: must_be_immutable

part of 'my_orders_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersOneEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersOne widget is first created.
class MyOrdersOneInitialEvent extends MyOrdersOneEvent {
  @override
  List<Object?> get props => [];
}
