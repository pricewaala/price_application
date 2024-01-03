// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_one_bloc.dart';

/// Represents the state of MyWishlistBoardsOne in the application.
class MyWishlistBoardsOneState extends Equatable {
  MyWishlistBoardsOneState({
    this.itemsController,
    this.myWishlistBoardsOneModelObj,
  });

  TextEditingController? itemsController;

  MyWishlistBoardsOneModel? myWishlistBoardsOneModelObj;

  @override
  List<Object?> get props => [
        itemsController,
        myWishlistBoardsOneModelObj,
      ];
  MyWishlistBoardsOneState copyWith({
    TextEditingController? itemsController,
    MyWishlistBoardsOneModel? myWishlistBoardsOneModelObj,
  }) {
    return MyWishlistBoardsOneState(
      itemsController: itemsController ?? this.itemsController,
      myWishlistBoardsOneModelObj:
          myWishlistBoardsOneModelObj ?? this.myWishlistBoardsOneModelObj,
    );
  }
}
