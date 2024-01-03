import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist_item_model.dart';
import 'package:price_s_application2/presentation/your_cart_screen/models/your_cart_model.dart';
part 'your_cart_event.dart';
part 'your_cart_state.dart';

/// A bloc that manages the state of a YourCart according to the event that is dispatched to it.
class YourCartBloc extends Bloc<YourCartEvent, YourCartState> {
  YourCartBloc(YourCartState initialState) : super(initialState) {
    on<YourCartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourCartInitialEvent event,
    Emitter<YourCartState> emit,
  ) async {
    emit(state.copyWith(
        yourCartModelObj: state.yourCartModelObj?.copyWith(
      productlistItemList: fillProductlistItemList(),
    )));
  }

  List<ProductlistItemModel> fillProductlistItemList() {
    return [
      ProductlistItemModel(
          image: ImageConstant.imgImage87,
          title: "Sportwear Set",
          price: " 80.00",
          description: "Size: L  |  Color: Cream",
          quantity: "1",
          text: "+"),
      ProductlistItemModel(
          image: ImageConstant.imgImage87,
          title: "Turtleneck Sweater",
          price: " 39.99",
          description: "Size: M  |  Color: White",
          quantity: "1",
          text: "+"),
      ProductlistItemModel(
          image: ImageConstant.imgMaskGroup99x97,
          title: "Cotton T-shirt",
          price: " 30.00",
          description: "Size: L  |  Color: Black",
          quantity: "1",
          text: "+")
    ];
  }
}
