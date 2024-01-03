// ignore_for_file: must_be_immutable

part of 'voucher_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VoucherOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VoucherOneEvent extends Equatable {}

/// Event that is dispatched when the VoucherOne widget is first created.
class VoucherOneInitialEvent extends VoucherOneEvent {
  @override
  List<Object?> get props => [];
}
