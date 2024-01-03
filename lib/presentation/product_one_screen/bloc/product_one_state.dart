// ignore_for_file: must_be_immutable

part of 'product_one_bloc.dart';

/// Represents the state of ProductOne in the application.
class ProductOneState extends Equatable {
  ProductOneState({
    this.sliderIndex = 0,
    this.productOneModelObj,
  });

  ProductOneModel? productOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productOneModelObj,
      ];
  ProductOneState copyWith({
    int? sliderIndex,
    ProductOneModel? productOneModelObj,
  }) {
    return ProductOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productOneModelObj: productOneModelObj ?? this.productOneModelObj,
    );
  }
}
