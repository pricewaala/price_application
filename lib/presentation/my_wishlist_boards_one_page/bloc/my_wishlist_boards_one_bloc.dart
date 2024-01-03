import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/miscimagecopy1_item_model.dart';
import '../models/widget2_item_model.dart';
import 'package:price_s_application2/presentation/my_wishlist_boards_one_page/models/my_wishlist_boards_one_model.dart';
part 'my_wishlist_boards_one_event.dart';
part 'my_wishlist_boards_one_state.dart';

/// A bloc that manages the state of a MyWishlistBoardsOne according to the event that is dispatched to it.
class MyWishlistBoardsOneBloc
    extends Bloc<MyWishlistBoardsOneEvent, MyWishlistBoardsOneState> {
  MyWishlistBoardsOneBloc(MyWishlistBoardsOneState initialState)
      : super(initialState) {
    on<MyWishlistBoardsOneInitialEvent>(_onInitialize);
  }

  List<Miscimagecopy1ItemModel> fillMiscimagecopy1ItemList() {
    return [
      Miscimagecopy1ItemModel(image: ImageConstant.imgImage1),
      Miscimagecopy1ItemModel(image: ImageConstant.imgImage2),
      Miscimagecopy1ItemModel(image: ImageConstant.imgImage3),
      Miscimagecopy1ItemModel(image: ImageConstant.imgImage5),
      Miscimagecopy1ItemModel(image: ImageConstant.imgImage6)
    ];
  }

  List<Widget2ItemModel> fillWidget2ItemList() {
    return [
      Widget2ItemModel(image: ImageConstant.imgImage9),
      Widget2ItemModel(image: ImageConstant.imgImage10),
      Widget2ItemModel(image: ImageConstant.imgImage11),
      Widget2ItemModel(image: ImageConstant.imgImage12)
    ];
  }

  _onInitialize(
    MyWishlistBoardsOneInitialEvent event,
    Emitter<MyWishlistBoardsOneState> emit,
  ) async {
    emit(state.copyWith(
      itemsController: TextEditingController(),
    ));
    emit(state.copyWith(
        myWishlistBoardsOneModelObj:
            state.myWishlistBoardsOneModelObj?.copyWith(
      miscimagecopy1ItemList: fillMiscimagecopy1ItemList(),
      widget2ItemList: fillWidget2ItemList(),
    )));
  }
}
