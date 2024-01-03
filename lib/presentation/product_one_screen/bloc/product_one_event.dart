// ignore_for_file: must_be_immutable

part of 'product_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductOneEvent extends Equatable {}

/// Event that is dispatched when the ProductOne widget is first created.
class ProductOneInitialEvent extends ProductOneEvent {
  @override
  List<Object?> get props => [];
}
