import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view_item_model.dart';
import '../models/productcardsection_item_model.dart';
import 'package:price_s_application2/presentation/product_full_screen/models/product_full_model.dart';
part 'product_full_event.dart';
part 'product_full_state.dart';

/// A bloc that manages the state of a ProductFull according to the event that is dispatched to it.
class ProductFullBloc extends Bloc<ProductFullEvent, ProductFullState> {
  ProductFullBloc(ProductFullState initialState) : super(initialState) {
    on<ProductFullInitialEvent>(_onInitialize);
  }

  List<ViewItemModel> fillViewItemList() {
    return List.generate(1, (index) => ViewItemModel());
  }

  List<ProductcardsectionItemModel> fillProductcardsectionItemList() {
    return [
      ProductcardsectionItemModel(
          productImage: ImageConstant.imgMaskGroup4,
          productName: "Rise Crop Hoodie",
          productPrice: " 43.00"),
      ProductcardsectionItemModel(
          productImage: ImageConstant.imgMaskGroup5,
          productName: "Gym Crop Top",
          productPrice: " 39.99"),
      ProductcardsectionItemModel(
          productImage: ImageConstant.imgMaskGroup6,
          productName: "Sport Sweatshirt",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    ProductFullInitialEvent event,
    Emitter<ProductFullState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productFullModelObj: state.productFullModelObj?.copyWith(
      viewItemList: fillViewItemList(),
      productcardsectionItemList: fillProductcardsectionItemList(),
    )));
  }
}
