// ignore_for_file: must_be_immutable

part of 'rate_product_one_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductOneThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductOneThreeEvent extends Equatable {}

/// Event that is dispatched when the RateProductOneThree widget is first created.
class RateProductOneThreeInitialEvent extends RateProductOneThreeEvent {
  @override
  List<Object?> get props => [];
}
