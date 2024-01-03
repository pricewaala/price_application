// ignore_for_file: must_be_immutable

part of 'my_wishlist_boards_two_bloc.dart';

/// Represents the state of MyWishlistBoardsTwo in the application.
class MyWishlistBoardsTwoState extends Equatable {
  MyWishlistBoardsTwoState({
    this.itemsController,
    this.myWishlistBoardsTwoModelObj,
  });

  TextEditingController? itemsController;

  MyWishlistBoardsTwoModel? myWishlistBoardsTwoModelObj;

  @override
  List<Object?> get props => [
        itemsController,
        myWishlistBoardsTwoModelObj,
      ];
  MyWishlistBoardsTwoState copyWith({
    TextEditingController? itemsController,
    MyWishlistBoardsTwoModel? myWishlistBoardsTwoModelObj,
  }) {
    return MyWishlistBoardsTwoState(
      itemsController: itemsController ?? this.itemsController,
      myWishlistBoardsTwoModelObj:
          myWishlistBoardsTwoModelObj ?? this.myWishlistBoardsTwoModelObj,
    );
  }
}
