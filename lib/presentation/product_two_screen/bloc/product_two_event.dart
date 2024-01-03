// ignore_for_file: must_be_immutable

part of 'product_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductTwoEvent extends Equatable {}

/// Event that is dispatched when the ProductTwo widget is first created.
class ProductTwoInitialEvent extends ProductTwoEvent {
  @override
  List<Object?> get props => [];
}
