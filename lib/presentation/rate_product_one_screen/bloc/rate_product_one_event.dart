// ignore_for_file: must_be_immutable

part of 'rate_product_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProductOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductOneEvent extends Equatable {}

/// Event that is dispatched when the RateProductOne widget is first created.
class RateProductOneInitialEvent extends RateProductOneEvent {
  @override
  List<Object?> get props => [];
}
