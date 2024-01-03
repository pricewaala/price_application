// ignore_for_file: must_be_immutable

part of 'order_info_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderInfoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderInfoOneEvent extends Equatable {}

/// Event that is dispatched when the OrderInfoOne widget is first created.
class OrderInfoOneInitialEvent extends OrderInfoOneEvent {
  @override
  List<Object?> get props => [];
}
