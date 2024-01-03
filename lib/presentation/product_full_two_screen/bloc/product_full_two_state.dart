// ignore_for_file: must_be_immutable

part of 'product_full_two_bloc.dart';

/// Represents the state of ProductFullTwo in the application.
class ProductFullTwoState extends Equatable {
  ProductFullTwoState({
    this.sliderIndex = 0,
    this.productFullTwoModelObj,
  });

  ProductFullTwoModel? productFullTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productFullTwoModelObj,
      ];
  ProductFullTwoState copyWith({
    int? sliderIndex,
    ProductFullTwoModel? productFullTwoModelObj,
  }) {
    return ProductFullTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productFullTwoModelObj:
          productFullTwoModelObj ?? this.productFullTwoModelObj,
    );
  }
}
