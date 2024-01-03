// ignore_for_file: must_be_immutable

part of 'order_info_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderInfoTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderInfoTwoOneEvent extends Equatable {}

/// Event that is dispatched when the OrderInfoTwoOne widget is first created.
class OrderInfoTwoOneInitialEvent extends OrderInfoTwoOneEvent {
  @override
  List<Object?> get props => [];
}
