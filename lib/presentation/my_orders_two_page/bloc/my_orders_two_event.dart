// ignore_for_file: must_be_immutable

part of 'my_orders_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersTwoEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersTwo widget is first created.
class MyOrdersTwoInitialEvent extends MyOrdersTwoEvent {
  @override
  List<Object?> get props => [];
}
