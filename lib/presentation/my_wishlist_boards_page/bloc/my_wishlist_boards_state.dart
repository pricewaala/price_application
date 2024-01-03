// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_bloc.dart';

/// Represents the state of MyWishlistBoards in the application.
class MyWishlistBoardsState extends Equatable {
  MyWishlistBoardsState({
    this.itemsController,
    this.myWishlistBoardsModelObj,
  });

  TextEditingController? itemsController;

  MyWishlistBoardsModel? myWishlistBoardsModelObj;

  @override
  List<Object?> get props => [
        itemsController,
        myWishlistBoardsModelObj,
      ];
  MyWishlistBoardsState copyWith({
    TextEditingController? itemsController,
    MyWishlistBoardsModel? myWishlistBoardsModelObj,
  }) {
    return MyWishlistBoardsState(
      itemsController: itemsController ?? this.itemsController,
      myWishlistBoardsModelObj:
          myWishlistBoardsModelObj ?? this.myWishlistBoardsModelObj,
    );
  }
}
