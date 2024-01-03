import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view3_item_model.dart';
import '../models/productcardlist_item_model.dart';
import 'package:price_s_application2/presentation/product_full_one_screen/models/product_full_one_model.dart';
part 'product_full_one_event.dart';
part 'product_full_one_state.dart';

/// A bloc that manages the state of a ProductFullOne according to the event that is dispatched to it.
class ProductFullOneBloc
    extends Bloc<ProductFullOneEvent, ProductFullOneState> {
  ProductFullOneBloc(ProductFullOneState initialState) : super(initialState) {
    on<ProductFullOneInitialEvent>(_onInitialize);
  }

  List<View3ItemModel> fillView3ItemList() {
    return List.generate(1, (index) => View3ItemModel());
  }

  List<ProductcardlistItemModel> fillProductcardlistItemList() {
    return [
      ProductcardlistItemModel(
          productImage: ImageConstant.imgMaskGroup4,
          productName: "Rise Crop Hoodie",
          productPrice: " 43.00"),
      ProductcardlistItemModel(
          productImage: ImageConstant.imgMaskGroup5,
          productName: "Gym Crop Top",
          productPrice: " 39.99"),
      ProductcardlistItemModel(
          productImage: ImageConstant.imgMaskGroup6,
          productName: "Sport Sweatshirt",
          productPrice: " 47.99")
    ];
  }

  _onInitialize(
    ProductFullOneInitialEvent event,
    Emitter<ProductFullOneState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productFullOneModelObj: state.productFullOneModelObj?.copyWith(
      view3ItemList: fillView3ItemList(),
      productcardlistItemList: fillProductcardlistItemList(),
    )));
  }
}
