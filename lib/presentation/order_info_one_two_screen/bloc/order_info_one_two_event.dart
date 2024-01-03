// ignore_for_file: must_be_immutable

part of 'order_info_one_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderInfoOneTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderInfoOneTwoEvent extends Equatable {}

/// Event that is dispatched when the OrderInfoOneTwo widget is first created.
class OrderInfoOneTwoInitialEvent extends OrderInfoOneTwoEvent {
  @override
  List<Object?> get props => [];
}
