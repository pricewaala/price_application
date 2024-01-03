// ignore_for_file: must_be_immutable

part of 'product_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductThreeEvent extends Equatable {}

/// Event that is dispatched when the ProductThree widget is first created.
class ProductThreeInitialEvent extends ProductThreeEvent {
  @override
  List<Object?> get props => [];
}
