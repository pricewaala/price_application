// ignore_for_file: must_be_immutable

part of 'check_out_two_bloc.dart';

/// Represents the state of CheckOutTwo in the application.
class CheckOutTwoState extends Equatable {
  CheckOutTwoState({
    this.iagreetoTermsandconditions = false,
    this.checkOutTwoModelObj,
  });

  CheckOutTwoModel? checkOutTwoModelObj;

  bool iagreetoTermsandconditions;

  @override
  List<Object?> get props => [
        iagreetoTermsandconditions,
        checkOutTwoModelObj,
      ];
  CheckOutTwoState copyWith({
    bool? iagreetoTermsandconditions,
    CheckOutTwoModel? checkOutTwoModelObj,
  }) {
    return CheckOutTwoState(
      iagreetoTermsandconditions:
          iagreetoTermsandconditions ?? this.iagreetoTermsandconditions,
      checkOutTwoModelObj: checkOutTwoModelObj ?? this.checkOutTwoModelObj,
    );
  }
}
