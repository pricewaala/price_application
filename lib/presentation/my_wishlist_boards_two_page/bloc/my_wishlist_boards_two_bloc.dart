import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/miscimagecopy2_item_model.dart';
import 'package:price_s_application2/presentation/my_wishlist_boards_two_page/models/my_wishlist_boards_two_model.dart';
part 'my_wishlist_boards_two_event.dart';
part 'my_wishlist_boards_two_state.dart';

/// A bloc that manages the state of a MyWishlistBoardsTwo according to the event that is dispatched to it.
class MyWishlistBoardsTwoBloc
    extends Bloc<MyWishlistBoardsTwoEvent, MyWishlistBoardsTwoState> {
  MyWishlistBoardsTwoBloc(MyWishlistBoardsTwoState initialState)
      : super(initialState) {
    on<MyWishlistBoardsTwoInitialEvent>(_onInitialize);
  }

  List<Miscimagecopy2ItemModel> fillMiscimagecopy2ItemList() {
    return [
      Miscimagecopy2ItemModel(image: ImageConstant.imgImage1),
      Miscimagecopy2ItemModel(image: ImageConstant.imgImage2),
      Miscimagecopy2ItemModel(image: ImageConstant.imgImage3),
      Miscimagecopy2ItemModel(image: ImageConstant.imgImage5),
      Miscimagecopy2ItemModel(image: ImageConstant.imgImage6)
    ];
  }

  _onInitialize(
    MyWishlistBoardsTwoInitialEvent event,
    Emitter<MyWishlistBoardsTwoState> emit,
  ) async {
    emit(state.copyWith(
      itemsController: TextEditingController(),
    ));
    emit(state.copyWith(
        myWishlistBoardsTwoModelObj:
            state.myWishlistBoardsTwoModelObj?.copyWith(
      miscimagecopy2ItemList: fillMiscimagecopy2ItemList(),
    )));
  }
}
