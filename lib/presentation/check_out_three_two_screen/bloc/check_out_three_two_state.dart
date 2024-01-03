// ignore_for_file: must_be_immutable

part of 'check_out_three_two_bloc.dart';

/// Represents the state of CheckOutThreeTwo in the application.
class CheckOutThreeTwoState extends Equatable {
  CheckOutThreeTwoState({this.checkOutThreeTwoModelObj});

  CheckOutThreeTwoModel? checkOutThreeTwoModelObj;

  @override
  List<Object?> get props => [
        checkOutThreeTwoModelObj,
      ];
  CheckOutThreeTwoState copyWith(
      {CheckOutThreeTwoModel? checkOutThreeTwoModelObj}) {
    return CheckOutThreeTwoState(
      checkOutThreeTwoModelObj:
          checkOutThreeTwoModelObj ?? this.checkOutThreeTwoModelObj,
    );
  }
}
