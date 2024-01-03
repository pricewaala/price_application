// ignore_for_file: must_be_immutable

part of 'product_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductFullEvent extends Equatable {}

/// Event that is dispatched when the ProductFull widget is first created.
class ProductFullInitialEvent extends ProductFullEvent {
  @override
  List<Object?> get props => [];
}
