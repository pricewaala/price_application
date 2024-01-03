// ignore_for_file: must_be_immutable

part of 'my_orders_three_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersThreeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersThreeOneEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersThreeOne widget is first created.
class MyOrdersThreeOneInitialEvent extends MyOrdersThreeOneEvent {
  @override
  List<Object?> get props => [];
}
