// ignore_for_file: must_be_immutable

part of 'rate_product_one_bloc.dart';

/// Represents the state of RateProductOne in the application.
class RateProductOneState extends Equatable {
  RateProductOneState({
    this.writeAnythingController,
    this.rateProductOneModelObj,
  });

  TextEditingController? writeAnythingController;

  RateProductOneModel? rateProductOneModelObj;

  @override
  List<Object?> get props => [
        writeAnythingController,
        rateProductOneModelObj,
      ];
  RateProductOneState copyWith({
    TextEditingController? writeAnythingController,
    RateProductOneModel? rateProductOneModelObj,
  }) {
    return RateProductOneState(
      writeAnythingController:
          writeAnythingController ?? this.writeAnythingController,
      rateProductOneModelObj:
          rateProductOneModelObj ?? this.rateProductOneModelObj,
    );
  }
}
