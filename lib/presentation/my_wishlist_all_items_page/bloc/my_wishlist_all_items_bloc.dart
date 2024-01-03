import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid2_item_model.dart';
import 'package:price_s_application2/presentation/my_wishlist_all_items_page/models/my_wishlist_all_items_model.dart';
part 'my_wishlist_all_items_event.dart';
part 'my_wishlist_all_items_state.dart';

/// A bloc that manages the state of a MyWishlistAllItems according to the event that is dispatched to it.
class MyWishlistAllItemsBloc
    extends Bloc<MyWishlistAllItemsEvent, MyWishlistAllItemsState> {
  MyWishlistAllItemsBloc(MyWishlistAllItemsState initialState)
      : super(initialState) {
    on<MyWishlistAllItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyWishlistAllItemsInitialEvent event,
    Emitter<MyWishlistAllItemsState> emit,
  ) async {
    emit(state.copyWith(
        myWishlistAllItemsModelObj: state.myWishlistAllItemsModelObj?.copyWith(
      productcardgrid2ItemList: fillProductcardgrid2ItemList(),
    )));
  }

  List<Productcardgrid2ItemModel> fillProductcardgrid2ItemList() {
    return [
      Productcardgrid2ItemModel(
          productImage: ImageConstant.imgImage78186x141,
          title: "Front Tie Mini Dress",
          price: " 59.00",
          ratingCount: "(38)"),
      Productcardgrid2ItemModel(
          productImage: ImageConstant.imgImage91,
          title: "Linen Dress",
          ratingCount: "(64)"),
      Productcardgrid2ItemModel(
          productImage: ImageConstant.imgImage781,
          title: "Ohara Dress",
          price: "85.00",
          ratingCount: "(50)"),
      Productcardgrid2ItemModel(
          productImage: ImageConstant.imgImage782,
          title: "Tie Back Mini Dress",
          price: " 67.00",
          ratingCount: "(39)")
    ];
  }
}
