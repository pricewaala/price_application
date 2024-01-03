// ignore_for_file: must_be_immutable

part of 'product_two_bloc.dart';

/// Represents the state of ProductTwo in the application.
class ProductTwoState extends Equatable {
  ProductTwoState({
    this.sliderIndex = 0,
    this.productTwoModelObj,
  });

  ProductTwoModel? productTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productTwoModelObj,
      ];
  ProductTwoState copyWith({
    int? sliderIndex,
    ProductTwoModel? productTwoModelObj,
  }) {
    return ProductTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productTwoModelObj: productTwoModelObj ?? this.productTwoModelObj,
    );
  }
}
