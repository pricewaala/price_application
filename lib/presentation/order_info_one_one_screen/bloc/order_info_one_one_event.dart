// ignore_for_file: must_be_immutable

part of 'order_info_one_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderInfoOneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderInfoOneOneEvent extends Equatable {}

/// Event that is dispatched when the OrderInfoOneOne widget is first created.
class OrderInfoOneOneInitialEvent extends OrderInfoOneOneEvent {
  @override
  List<Object?> get props => [];
}
