// ignore_for_file: must_be_immutable

part of 'rate_product_one_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductOneTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductOneTwoEvent extends Equatable {}

/// Event that is dispatched when the RateProductOneTwo widget is first created.
class RateProductOneTwoInitialEvent extends RateProductOneTwoEvent {
  @override
  List<Object?> get props => [];
}
