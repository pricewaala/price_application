import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcardgrid8_item_model.dart';
import 'package:price_s_application2/presentation/my_wishlist_all_items_one_page/models/my_wishlist_all_items_one_model.dart';
part 'my_wishlist_all_items_one_event.dart';
part 'my_wishlist_all_items_one_state.dart';

/// A bloc that manages the state of a MyWishlistAllItemsOne according to the event that is dispatched to it.
class MyWishlistAllItemsOneBloc
    extends Bloc<MyWishlistAllItemsOneEvent, MyWishlistAllItemsOneState> {
  MyWishlistAllItemsOneBloc(MyWishlistAllItemsOneState initialState)
      : super(initialState) {
    on<MyWishlistAllItemsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyWishlistAllItemsOneInitialEvent event,
    Emitter<MyWishlistAllItemsOneState> emit,
  ) async {
    emit(state.copyWith(
        myWishlistAllItemsOneModelObj:
            state.myWishlistAllItemsOneModelObj?.copyWith(
      productcardgrid8ItemList: fillProductcardgrid8ItemList(),
    )));
  }

  List<Productcardgrid8ItemModel> fillProductcardgrid8ItemList() {
    return [
      Productcardgrid8ItemModel(
          productImage: ImageConstant.imgImage78186x141,
          productName: "Front Tie Mini Dress",
          productPrice: " 59.00",
          productRatingCount: "(38)"),
      Productcardgrid8ItemModel(
          productImage: ImageConstant.imgImage91,
          productName: "Linen Dress",
          productRatingCount: "(64)"),
      Productcardgrid8ItemModel(
          productImage: ImageConstant.imgImage781,
          productName: "Ohara Dress",
          productPrice: "85.00",
          productRatingCount: "(50)"),
      Productcardgrid8ItemModel(
          productImage: ImageConstant.imgImage782,
          productName: "Tie Back Mini Dress",
          productPrice: " 67.00",
          productRatingCount: "(39)")
    ];
  }
}
