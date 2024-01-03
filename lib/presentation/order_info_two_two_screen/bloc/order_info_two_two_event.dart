// ignore_for_file: must_be_immutable

part of 'order_info_two_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderInfoTwoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderInfoTwoTwoEvent extends Equatable {}

/// Event that is dispatched when the OrderInfoTwoTwo widget is first created.
class OrderInfoTwoTwoInitialEvent extends OrderInfoTwoTwoEvent {
  @override
  List<Object?> get props => [];
}
