import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist1_item_model.dart';
import 'package:price_s_application2/presentation/your_cart_one_screen/models/your_cart_one_model.dart';
part 'your_cart_one_event.dart';
part 'your_cart_one_state.dart';

/// A bloc that manages the state of a YourCartOne according to the event that is dispatched to it.
class YourCartOneBloc extends Bloc<YourCartOneEvent, YourCartOneState> {
  YourCartOneBloc(YourCartOneState initialState) : super(initialState) {
    on<YourCartOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourCartOneInitialEvent event,
    Emitter<YourCartOneState> emit,
  ) async {
    emit(state.copyWith(
        yourCartOneModelObj: state.yourCartOneModelObj?.copyWith(
      productlist1ItemList: fillProductlist1ItemList(),
    )));
  }

  List<Productlist1ItemModel> fillProductlist1ItemList() {
    return [
      Productlist1ItemModel(
          image: ImageConstant.imgImage87,
          title: "Sportwear Set",
          price: " 80.00",
          sizeColor: "Size: L  |  Color: Cream",
          quantity: "1",
          addButton: "+"),
      Productlist1ItemModel(
          image: ImageConstant.imgImage87,
          title: "Turtleneck Sweater",
          price: " 39.99",
          sizeColor: "Size: M  |  Color: White",
          quantity: "1",
          addButton: "+"),
      Productlist1ItemModel(
          image: ImageConstant.imgMaskGroup99x97,
          title: "Cotton T-shirt",
          price: " 30.00",
          sizeColor: "Size: L  |  Color: Black",
          quantity: "1",
          addButton: "+")
    ];
  }
}
