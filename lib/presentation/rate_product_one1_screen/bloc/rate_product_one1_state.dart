// ignore_for_file: must_be_immutable

part of 'rate_product_one1_bloc.dart';

/// Represents the state of RateProductOne1 in the application.
class RateProductOne1State extends Equatable {
  RateProductOne1State({
    this.writeAboutProductController,
    this.rateProductOne1ModelObj,
  });

  TextEditingController? writeAboutProductController;

  RateProductOne1Model? rateProductOne1ModelObj;

  @override
  List<Object?> get props => [
        writeAboutProductController,
        rateProductOne1ModelObj,
      ];
  RateProductOne1State copyWith({
    TextEditingController? writeAboutProductController,
    RateProductOne1Model? rateProductOne1ModelObj,
  }) {
    return RateProductOne1State(
      writeAboutProductController:
          writeAboutProductController ?? this.writeAboutProductController,
      rateProductOne1ModelObj:
          rateProductOne1ModelObj ?? this.rateProductOne1ModelObj,
    );
  }
}
