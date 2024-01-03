// ignore_for_file: must_be_immutable

part of 'my_orders_three_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyOrdersThreeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyOrdersThreeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MyOrdersThreeTabContainer widget is first created.
class MyOrdersThreeTabContainerInitialEvent
    extends MyOrdersThreeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
