// ignore_for_file: must_be_immutable

part of 'rate_product_two_one_bloc.dart';

/// Represents the state of RateProductTwoOne in the application.
class RateProductTwoOneState extends Equatable {
  RateProductTwoOneState({this.rateProductTwoOneModelObj});

  RateProductTwoOneModel? rateProductTwoOneModelObj;

  @override
  List<Object?> get props => [
        rateProductTwoOneModelObj,
      ];
  RateProductTwoOneState copyWith(
      {RateProductTwoOneModel? rateProductTwoOneModelObj}) {
    return RateProductTwoOneState(
      rateProductTwoOneModelObj:
          rateProductTwoOneModelObj ?? this.rateProductTwoOneModelObj,
    );
  }
}
