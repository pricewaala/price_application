// ignore_for_file: must_be_immutable

part of 'rate_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RateProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RateProductEvent extends Equatable {}

/// Event that is dispatched when the RateProduct widget is first created.
class RateProductInitialEvent extends RateProductEvent {
  @override
  List<Object?> get props => [];
}
