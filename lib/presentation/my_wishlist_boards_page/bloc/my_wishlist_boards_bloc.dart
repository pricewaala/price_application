import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/miscimagecopy_item_model.dart';
import '../models/widget1_item_model.dart';
import 'package:price_s_application2/presentation/my_wishlist_boards_page/models/my_wishlist_boards_model.dart';
part 'my_wishlist_boards_event.dart';
part 'my_wishlist_boards_state.dart';

/// A bloc that manages the state of a MyWishlistBoards according to the event that is dispatched to it.
class MyWishlistBoardsBloc
    extends Bloc<MyWishlistBoardsEvent, MyWishlistBoardsState> {
  MyWishlistBoardsBloc(MyWishlistBoardsState initialState)
      : super(initialState) {
    on<MyWishlistBoardsInitialEvent>(_onInitialize);
  }

  List<MiscimagecopyItemModel> fillMiscimagecopyItemList() {
    return [
      MiscimagecopyItemModel(image: ImageConstant.imgImage1),
      MiscimagecopyItemModel(image: ImageConstant.imgImage2),
      MiscimagecopyItemModel(image: ImageConstant.imgImage3),
      MiscimagecopyItemModel(image: ImageConstant.imgImage5),
      MiscimagecopyItemModel(image: ImageConstant.imgImage6)
    ];
  }

  List<Widget1ItemModel> fillWidget1ItemList() {
    return [
      Widget1ItemModel(image: ImageConstant.imgImage9),
      Widget1ItemModel(image: ImageConstant.imgImage10),
      Widget1ItemModel(image: ImageConstant.imgImage11),
      Widget1ItemModel(image: ImageConstant.imgImage12)
    ];
  }

  _onInitialize(
    MyWishlistBoardsInitialEvent event,
    Emitter<MyWishlistBoardsState> emit,
  ) async {
    emit(state.copyWith(
      itemsController: TextEditingController(),
    ));
    emit(state.copyWith(
        myWishlistBoardsModelObj: state.myWishlistBoardsModelObj?.copyWith(
      miscimagecopyItemList: fillMiscimagecopyItemList(),
      widget1ItemList: fillWidget1ItemList(),
    )));
  }
}
