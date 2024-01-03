// ignore_for_file: must_be_immutable

part of 'rate_product_two1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductTwo1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductTwo1Event extends Equatable {}

/// Event that is dispatched when the RateProductTwo1 widget is first created.
class RateProductTwo1InitialEvent extends RateProductTwo1Event {
  @override
  List<Object?> get props => [];
}
