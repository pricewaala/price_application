// ignore_for_file: must_be_immutable

part of 'check_out_two_two_bloc.dart';

/// Represents the state of CheckOutTwoTwo in the application.
class CheckOutTwoTwoState extends Equatable {
  CheckOutTwoTwoState({
    this.sliderIndex = 0,
    this.iagreetoTermsandconditions = false,
    this.checkOutTwoTwoModelObj,
  });

  CheckOutTwoTwoModel? checkOutTwoTwoModelObj;

  int sliderIndex;

  bool iagreetoTermsandconditions;

  @override
  List<Object?> get props => [
        sliderIndex,
        iagreetoTermsandconditions,
        checkOutTwoTwoModelObj,
      ];
  CheckOutTwoTwoState copyWith({
    int? sliderIndex,
    bool? iagreetoTermsandconditions,
    CheckOutTwoTwoModel? checkOutTwoTwoModelObj,
  }) {
    return CheckOutTwoTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iagreetoTermsandconditions:
          iagreetoTermsandconditions ?? this.iagreetoTermsandconditions,
      checkOutTwoTwoModelObj:
          checkOutTwoTwoModelObj ?? this.checkOutTwoTwoModelObj,
    );
  }
}
