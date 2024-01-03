// ignore_for_file: must_be_immutable

part of 'my_orders_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersThreeEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersThree widget is first created.
class MyOrdersThreeInitialEvent extends MyOrdersThreeEvent {
  @override
  List<Object?> get props => [];
}
