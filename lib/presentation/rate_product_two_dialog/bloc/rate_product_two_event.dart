// ignore_for_file: must_be_immutable

part of 'rate_product_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductTwoEvent extends Equatable {}

/// Event that is dispatched when the RateProductTwo widget is first created.
class RateProductTwoInitialEvent extends RateProductTwoEvent {
  @override
  List<Object?> get props => [];
}
