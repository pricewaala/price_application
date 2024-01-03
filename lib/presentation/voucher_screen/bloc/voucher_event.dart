// ignore_for_file: must_be_immutable

part of 'voucher_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Voucher widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VoucherEvent extends Equatable {}

/// Event that is dispatched when the Voucher widget is first created.
class VoucherInitialEvent extends VoucherEvent {
  @override
  List<Object?> get props => [];
}
