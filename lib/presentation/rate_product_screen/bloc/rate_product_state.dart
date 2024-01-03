// ignore_for_file: must_be_immutable

part of 'rate_product_bloc.dart';

/// Represents the state of RateProduct in the application.
class RateProductState extends Equatable {
  RateProductState({
    this.writeAboutProductController,
    this.rateProductModelObj,
  });

  TextEditingController? writeAboutProductController;

  RateProductModel? rateProductModelObj;

  @override
  List<Object?> get props => [
        writeAboutProductController,
        rateProductModelObj,
      ];
  RateProductState copyWith({
    TextEditingController? writeAboutProductController,
    RateProductModel? rateProductModelObj,
  }) {
    return RateProductState(
      writeAboutProductController:
          writeAboutProductController ?? this.writeAboutProductController,
      rateProductModelObj: rateProductModelObj ?? this.rateProductModelObj,
    );
  }
}
