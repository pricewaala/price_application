// ignore_for_file: must_be_immutable

part of 'check_out_two_one_bloc.dart';

/// Represents the state of CheckOutTwoOne in the application.
class CheckOutTwoOneState extends Equatable {
  CheckOutTwoOneState({
    this.iagreetoTermsandconditions = false,
    this.checkOutTwoOneModelObj,
  });

  CheckOutTwoOneModel? checkOutTwoOneModelObj;

  bool iagreetoTermsandconditions;

  @override
  List<Object?> get props => [
        iagreetoTermsandconditions,
        checkOutTwoOneModelObj,
      ];
  CheckOutTwoOneState copyWith({
    bool? iagreetoTermsandconditions,
    CheckOutTwoOneModel? checkOutTwoOneModelObj,
  }) {
    return CheckOutTwoOneState(
      iagreetoTermsandconditions:
          iagreetoTermsandconditions ?? this.iagreetoTermsandconditions,
      checkOutTwoOneModelObj:
          checkOutTwoOneModelObj ?? this.checkOutTwoOneModelObj,
    );
  }
}
