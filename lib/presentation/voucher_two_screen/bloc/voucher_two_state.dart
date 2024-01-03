// ignore_for_file: must_be_immutable

part of 'voucher_two_bloc.dart';

/// Represents the state of VoucherTwo in the application.
class VoucherTwoState extends Equatable {
  VoucherTwoState({this.voucherTwoModelObj});

  VoucherTwoModel? voucherTwoModelObj;

  @override
  List<Object?> get props => [
        voucherTwoModelObj,
      ];
  VoucherTwoState copyWith({VoucherTwoModel? voucherTwoModelObj}) {
    return VoucherTwoState(
      voucherTwoModelObj: voucherTwoModelObj ?? this.voucherTwoModelObj,
    );
  }
}
