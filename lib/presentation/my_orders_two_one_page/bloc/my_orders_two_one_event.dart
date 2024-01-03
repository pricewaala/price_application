// ignore_for_file: must_be_immutable

part of 'my_orders_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersTwoOneEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersTwoOne widget is first created.
class MyOrdersTwoOneInitialEvent extends MyOrdersTwoOneEvent {
  @override
  List<Object?> get props => [];
}
