import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist2_item_model.dart';
import 'package:price_s_application2/presentation/your_cart_two_screen/models/your_cart_two_model.dart';
part 'your_cart_two_event.dart';
part 'your_cart_two_state.dart';

/// A bloc that manages the state of a YourCartTwo according to the event that is dispatched to it.
class YourCartTwoBloc extends Bloc<YourCartTwoEvent, YourCartTwoState> {
  YourCartTwoBloc(YourCartTwoState initialState) : super(initialState) {
    on<YourCartTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourCartTwoInitialEvent event,
    Emitter<YourCartTwoState> emit,
  ) async {
    emit(state.copyWith(
        yourCartTwoModelObj: state.yourCartTwoModelObj?.copyWith(
      productlist2ItemList: fillProductlist2ItemList(),
    )));
  }

  List<Productlist2ItemModel> fillProductlist2ItemList() {
    return [
      Productlist2ItemModel(
          image: ImageConstant.imgImage87,
          productName: "Sportwear Set",
          productPrice: " 80.00",
          productDetails: "Size: L  |  Color: Cream",
          quantity: "1",
          plusSign: "+"),
      Productlist2ItemModel(
          image: ImageConstant.imgImage87,
          productName: "Turtleneck Sweater",
          productPrice: " 39.99",
          productDetails: "Size: M  |  Color: White",
          quantity: "1",
          plusSign: "+"),
      Productlist2ItemModel(
          image: ImageConstant.imgMaskGroup99x97, quantity: "1", plusSign: "+")
    ];
  }
}
