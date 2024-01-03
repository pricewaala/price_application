// ignore_for_file: must_be_immutable

part of 'product_three_bloc.dart';

/// Represents the state of ProductThree in the application.
class ProductThreeState extends Equatable {
  ProductThreeState({
    this.sliderIndex = 0,
    this.productThreeModelObj,
  });

  ProductThreeModel? productThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productThreeModelObj,
      ];
  ProductThreeState copyWith({
    int? sliderIndex,
    ProductThreeModel? productThreeModelObj,
  }) {
    return ProductThreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productThreeModelObj: productThreeModelObj ?? this.productThreeModelObj,
    );
  }
}
