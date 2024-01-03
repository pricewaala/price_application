// ignore_for_file: must_be_immutable

part of 'rate_product_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductTwoOneEvent extends Equatable {}

/// Event that is dispatched when the RateProductTwoOne widget is first created.
class RateProductTwoOneInitialEvent extends RateProductTwoOneEvent {
  @override
  List<Object?> get props => [];
}
