// ignore_for_file: must_be_immutable

part of 'my_orders_two_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersTwoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersTwoTwoEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersTwoTwo widget is first created.
class MyOrdersTwoTwoInitialEvent extends MyOrdersTwoTwoEvent {
  @override
  List<Object?> get props => [];
}
