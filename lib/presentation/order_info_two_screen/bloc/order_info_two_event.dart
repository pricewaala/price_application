// ignore_for_file: must_be_immutable

part of 'order_info_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderInfoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderInfoTwoEvent extends Equatable {}

/// Event that is dispatched when the OrderInfoTwo widget is first created.
class OrderInfoTwoInitialEvent extends OrderInfoTwoEvent {
  @override
  List<Object?> get props => [];
}
