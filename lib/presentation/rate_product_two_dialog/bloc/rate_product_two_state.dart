// ignore_for_file: must_be_immutable

part of 'rate_product_two_bloc.dart';

/// Represents the state of RateProductTwo in the application.
class RateProductTwoState extends Equatable {
  RateProductTwoState({this.rateProductTwoModelObj});

  RateProductTwoModel? rateProductTwoModelObj;

  @override
  List<Object?> get props => [
        rateProductTwoModelObj,
      ];
  RateProductTwoState copyWith({RateProductTwoModel? rateProductTwoModelObj}) {
    return RateProductTwoState(
      rateProductTwoModelObj:
          rateProductTwoModelObj ?? this.rateProductTwoModelObj,
    );
  }
}
