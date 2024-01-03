// ignore_for_file: must_be_immutable

part of 'voucher_bloc.dart';

/// Represents the state of Voucher in the application.
class VoucherState extends Equatable {
  VoucherState({this.voucherModelObj});

  VoucherModel? voucherModelObj;

  @override
  List<Object?> get props => [
        voucherModelObj,
      ];
  VoucherState copyWith({VoucherModel? voucherModelObj}) {
    return VoucherState(
      voucherModelObj: voucherModelObj ?? this.voucherModelObj,
    );
  }
}
