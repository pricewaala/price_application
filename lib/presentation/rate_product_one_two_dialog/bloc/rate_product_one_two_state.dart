// ignore_for_file: must_be_immutable

part of 'rate_product_one_two_bloc.dart';

/// Represents the state of RateProductOneTwo in the application.
class RateProductOneTwoState extends Equatable {
  RateProductOneTwoState({this.rateProductOneTwoModelObj});

  RateProductOneTwoModel? rateProductOneTwoModelObj;

  @override
  List<Object?> get props => [
        rateProductOneTwoModelObj,
      ];
  RateProductOneTwoState copyWith(
      {RateProductOneTwoModel? rateProductOneTwoModelObj}) {
    return RateProductOneTwoState(
      rateProductOneTwoModelObj:
          rateProductOneTwoModelObj ?? this.rateProductOneTwoModelObj,
    );
  }
}
