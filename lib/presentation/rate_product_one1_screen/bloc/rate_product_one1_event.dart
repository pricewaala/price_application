// ignore_for_file: must_be_immutable

part of 'rate_product_one1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductOne1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductOne1Event extends Equatable {}

/// Event that is dispatched when the RateProductOne1 widget is first created.
class RateProductOne1InitialEvent extends RateProductOne1Event {
  @override
  List<Object?> get props => [];
}
