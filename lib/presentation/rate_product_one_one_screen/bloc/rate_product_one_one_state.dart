// ignore_for_file: must_be_immutable

part of 'rate_product_one_one_bloc.dart';

/// Represents the state of RateProductOneOne in the application.
class RateProductOneOneState extends Equatable {
  RateProductOneOneState({
    this.writeController,
    this.rateProductOneOneModelObj,
  });

  TextEditingController? writeController;

  RateProductOneOneModel? rateProductOneOneModelObj;

  @override
  List<Object?> get props => [
        writeController,
        rateProductOneOneModelObj,
      ];
  RateProductOneOneState copyWith({
    TextEditingController? writeController,
    RateProductOneOneModel? rateProductOneOneModelObj,
  }) {
    return RateProductOneOneState(
      writeController: writeController ?? this.writeController,
      rateProductOneOneModelObj:
          rateProductOneOneModelObj ?? this.rateProductOneOneModelObj,
    );
  }
}
