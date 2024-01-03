// ignore_for_file: must_be_immutable

part of 'voucher_one_bloc.dart';

/// Represents the state of VoucherOne in the application.
class VoucherOneState extends Equatable {
  VoucherOneState({this.voucherOneModelObj});

  VoucherOneModel? voucherOneModelObj;

  @override
  List<Object?> get props => [
        voucherOneModelObj,
      ];
  VoucherOneState copyWith({VoucherOneModel? voucherOneModelObj}) {
    return VoucherOneState(
      voucherOneModelObj: voucherOneModelObj ?? this.voucherOneModelObj,
    );
  }
}
