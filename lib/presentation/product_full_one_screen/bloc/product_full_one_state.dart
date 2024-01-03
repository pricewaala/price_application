// ignore_for_file: must_be_immutable

part of 'product_full_one_bloc.dart';

/// Represents the state of ProductFullOne in the application.
class ProductFullOneState extends Equatable {
  ProductFullOneState({
    this.sliderIndex = 0,
    this.productFullOneModelObj,
  });

  ProductFullOneModel? productFullOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productFullOneModelObj,
      ];
  ProductFullOneState copyWith({
    int? sliderIndex,
    ProductFullOneModel? productFullOneModelObj,
  }) {
    return ProductFullOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productFullOneModelObj:
          productFullOneModelObj ?? this.productFullOneModelObj,
    );
  }
}
