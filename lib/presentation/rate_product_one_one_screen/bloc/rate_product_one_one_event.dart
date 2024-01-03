// ignore_for_file: must_be_immutable

part of 'rate_product_one_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductOneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductOneOneEvent extends Equatable {}

/// Event that is dispatched when the RateProductOneOne widget is first created.
class RateProductOneOneInitialEvent extends RateProductOneOneEvent {
  @override
  List<Object?> get props => [];
}
