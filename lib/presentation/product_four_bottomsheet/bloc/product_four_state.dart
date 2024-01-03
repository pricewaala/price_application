// ignore_for_file: must_be_immutable

part of 'product_four_bloc.dart';

/// Represents the state of ProductFour in the application.
class ProductFourState extends Equatable {
  ProductFourState({this.productFourModelObj});

  ProductFourModel? productFourModelObj;

  @override
  List<Object?> get props => [
        productFourModelObj,
      ];
  ProductFourState copyWith({ProductFourModel? productFourModelObj}) {
    return ProductFourState(
      productFourModelObj: productFourModelObj ?? this.productFourModelObj,
    );
  }
}
