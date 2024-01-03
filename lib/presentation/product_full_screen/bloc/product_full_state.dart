// ignore_for_file: must_be_immutable

part of 'product_full_bloc.dart';

/// Represents the state of ProductFull in the application.
class ProductFullState extends Equatable {
  ProductFullState({
    this.sliderIndex = 0,
    this.productFullModelObj,
  });

  ProductFullModel? productFullModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productFullModelObj,
      ];
  ProductFullState copyWith({
    int? sliderIndex,
    ProductFullModel? productFullModelObj,
  }) {
    return ProductFullState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productFullModelObj: productFullModelObj ?? this.productFullModelObj,
    );
  }
}
