import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/arrowleft_item_model.dart';
import '../models/productcardlist1_item_model.dart';
import 'package:price_s_application2/presentation/product_full_two_screen/models/product_full_two_model.dart';
part 'product_full_two_event.dart';
part 'product_full_two_state.dart';

/// A bloc that manages the state of a ProductFullTwo according to the event that is dispatched to it.
class ProductFullTwoBloc
    extends Bloc<ProductFullTwoEvent, ProductFullTwoState> {
  ProductFullTwoBloc(ProductFullTwoState initialState) : super(initialState) {
    on<ProductFullTwoInitialEvent>(_onInitialize);
  }

  List<ArrowleftItemModel> fillArrowleftItemList() {
    return List.generate(1, (index) => ArrowleftItemModel());
  }

  List<Productcardlist1ItemModel> fillProductcardlist1ItemList() {
    return [
      Productcardlist1ItemModel(
          productImage: ImageConstant.imgMaskGroup4,
          productName: "Rise Crop Hoodie",
          productPrice: " 43.00"),
      Productcardlist1ItemModel(
          productImage: ImageConstant.imgMaskGroup5,
          productName: "Gym Crop Top",
          productPrice: " 39.99"),
      Productcardlist1ItemModel(
          productImage: ImageConstant.imgMaskGroup6,
          productName: "Sport Sweatshirt",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    ProductFullTwoInitialEvent event,
    Emitter<ProductFullTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productFullTwoModelObj: state.productFullTwoModelObj?.copyWith(
      arrowleftItemList: fillArrowleftItemList(),
      productcardlist1ItemList: fillProductcardlist1ItemList(),
    )));
  }
}
