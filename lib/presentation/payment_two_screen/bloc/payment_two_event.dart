// ignore_for_file: must_be_immutable

part of 'payment_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentTwoEvent extends Equatable {}

/// Event that is dispatched when the PaymentTwo widget is first created.
class PaymentTwoInitialEvent extends PaymentTwoEvent {
  @override
  List<Object?> get props => [];
}
