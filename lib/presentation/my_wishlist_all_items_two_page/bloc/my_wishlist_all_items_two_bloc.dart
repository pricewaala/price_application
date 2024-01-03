import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid6_item_model.dart';
import 'package:price_s_application2/presentation/my_wishlist_all_items_two_page/models/my_wishlist_all_items_two_model.dart';
part 'my_wishlist_all_items_two_event.dart';
part 'my_wishlist_all_items_two_state.dart';

/// A bloc that manages the state of a MyWishlistAllItemsTwo according to the event that is dispatched to it.
class MyWishlistAllItemsTwoBloc
    extends Bloc<MyWishlistAllItemsTwoEvent, MyWishlistAllItemsTwoState> {
  MyWishlistAllItemsTwoBloc(MyWishlistAllItemsTwoState initialState)
      : super(initialState) {
    on<MyWishlistAllItemsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyWishlistAllItemsTwoInitialEvent event,
    Emitter<MyWishlistAllItemsTwoState> emit,
  ) async {
    emit(state.copyWith(
        myWishlistAllItemsTwoModelObj:
            state.myWishlistAllItemsTwoModelObj?.copyWith(
      productcardgrid6ItemList: fillProductcardgrid6ItemList(),
    )));
  }

  List<Productcardgrid6ItemModel> fillProductcardgrid6ItemList() {
    return [
      Productcardgrid6ItemModel(
          productImage: ImageConstant.imgImage78186x141,
          productName: "Front Tie Mini Dress",
          productPrice: " 59.00",
          ratingCount: "(38)"),
      Productcardgrid6ItemModel(
          productImage: ImageConstant.imgImage91,
          productName: "Linen Dress",
          ratingCount: "(64)"),
      Productcardgrid6ItemModel(
          productImage: ImageConstant.imgImage781,
          productName: "Ohara Dress",
          productPrice: "85.00",
          ratingCount: "(50)"),
      Productcardgrid6ItemModel(
          productImage: ImageConstant.imgImage782,
          productName: "Tie Back Mini Dress",
          productPrice: " 67.00",
          ratingCount: "(39)")
    ];
  }
}
