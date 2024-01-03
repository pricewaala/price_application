import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/my_wishlist_boards_tab_container_screen/models/my_wishlist_boards_tab_container_model.dart';
part 'my_wishlist_boards_tab_container_event.dart';
part 'my_wishlist_boards_tab_container_state.dart';

/// A bloc that manages the state of a MyWishlistBoardsTabContainer according to the event that is dispatched to it.
class MyWishlistBoardsTabContainerBloc extends Bloc<
    MyWishlistBoardsTabContainerEvent, MyWishlistBoardsTabContainerState> {
  MyWishlistBoardsTabContainerBloc(
      MyWishlistBoardsTabContainerState initialState)
      : super(initialState) {
    on<MyWishlistBoardsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyWishlistBoardsTabContainerInitialEvent event,
    Emitter<MyWishlistBoardsTabContainerState> emit,
  ) async {}
}
