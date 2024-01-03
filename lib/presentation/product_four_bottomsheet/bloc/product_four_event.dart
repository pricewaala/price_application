// ignore_for_file: must_be_immutable

part of 'product_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductFourEvent extends Equatable {}

/// Event that is dispatched when the ProductFour widget is first created.
class ProductFourInitialEvent extends ProductFourEvent {
  @override
  List<Object?> get props => [];
}
