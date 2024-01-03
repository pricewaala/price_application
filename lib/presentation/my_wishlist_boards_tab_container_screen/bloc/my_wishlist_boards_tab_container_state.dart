// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_tab_container_bloc.dart';

/// Represents the state of MyWishlistBoardsTabContainer in the application.
class MyWishlistBoardsTabContainerState extends Equatable {
  MyWishlistBoardsTabContainerState(
      {this.myWishlistBoardsTabContainerModelObj});

  MyWishlistBoardsTabContainerModel? myWishlistBoardsTabContainerModelObj;

  @override
  List<Object?> get props => [
        myWishlistBoardsTabContainerModelObj,
      ];
  MyWishlistBoardsTabContainerState copyWith(
      {MyWishlistBoardsTabContainerModel?
          myWishlistBoardsTabContainerModelObj}) {
    return MyWishlistBoardsTabContainerState(
      myWishlistBoardsTabContainerModelObj:
          myWishlistBoardsTabContainerModelObj ??
              this.myWishlistBoardsTabContainerModelObj,
    );
  }
}
