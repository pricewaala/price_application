// ignore_for_file: must_be_immutable

part of 'voucher_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VoucherTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VoucherTwoEvent extends Equatable {}

/// Event that is dispatched when the VoucherTwo widget is first created.
class VoucherTwoInitialEvent extends VoucherTwoEvent {
  @override
  List<Object?> get props => [];
}
