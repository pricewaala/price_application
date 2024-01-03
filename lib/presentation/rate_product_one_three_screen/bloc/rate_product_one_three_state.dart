// ignore_for_file: must_be_immutable

part of 'rate_product_one_three_bloc.dart';

/// Represents the state of RateProductOneThree in the application.
class RateProductOneThreeState extends Equatable {
  RateProductOneThreeState({
    this.writeController,
    this.rateProductOneThreeModelObj,
  });

  TextEditingController? writeController;

  RateProductOneThreeModel? rateProductOneThreeModelObj;

  @override
  List<Object?> get props => [
        writeController,
        rateProductOneThreeModelObj,
      ];
  RateProductOneThreeState copyWith({
    TextEditingController? writeController,
    RateProductOneThreeModel? rateProductOneThreeModelObj,
  }) {
    return RateProductOneThreeState(
      writeController: writeController ?? this.writeController,
      rateProductOneThreeModelObj:
          rateProductOneThreeModelObj ?? this.rateProductOneThreeModelObj,
    );
  }
}
