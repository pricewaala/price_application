// ignore_for_file: must_be_immutable

part of 'rate_product_two1_bloc.dart';

/// Represents the state of RateProductTwo1 in the application.
class RateProductTwo1State extends Equatable {
  RateProductTwo1State({
    this.writeAboutProductController,
    this.rateProductTwo1ModelObj,
  });

  TextEditingController? writeAboutProductController;

  RateProductTwo1Model? rateProductTwo1ModelObj;

  @override
  List<Object?> get props => [
        writeAboutProductController,
        rateProductTwo1ModelObj,
      ];
  RateProductTwo1State copyWith({
    TextEditingController? writeAboutProductController,
    RateProductTwo1Model? rateProductTwo1ModelObj,
  }) {
    return RateProductTwo1State(
      writeAboutProductController:
          writeAboutProductController ?? this.writeAboutProductController,
      rateProductTwo1ModelObj:
          rateProductTwo1ModelObj ?? this.rateProductTwo1ModelObj,
    );
  }
}
