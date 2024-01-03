// ignore_for_file: must_be_immutable

part of 'product_full_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductFullOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductFullOneEvent extends Equatable {}

/// Event that is dispatched when the ProductFullOne widget is first created.
class ProductFullOneInitialEvent extends ProductFullOneEvent {
  @override
  List<Object?> get props => [];
}
