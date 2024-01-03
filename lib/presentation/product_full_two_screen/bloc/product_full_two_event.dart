// ignore_for_file: must_be_immutable

part of 'product_full_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductFullTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductFullTwoEvent extends Equatable {}

/// Event that is dispatched when the ProductFullTwo widget is first created.
class ProductFullTwoInitialEvent extends ProductFullTwoEvent {
  @override
  List<Object?> get props => [];
}
