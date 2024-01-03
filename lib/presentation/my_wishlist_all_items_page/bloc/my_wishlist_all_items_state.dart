// ignore_for_file: must_be_immutable

part of 'my_wishlist_all_items_bloc.dart';

/// Represents the state of MyWishlistAllItems in the application.
class MyWishlistAllItemsState extends Equatable {
  MyWishlistAllItemsState({this.myWishlistAllItemsModelObj});

  MyWishlistAllItemsModel? myWishlistAllItemsModelObj;

  @override
  List<Object?> get props => [
        myWishlistAllItemsModelObj,
      ];
  MyWishlistAllItemsState copyWith(
      {MyWishlistAllItemsModel? myWishlistAllItemsModelObj}) {
    return MyWishlistAllItemsState(
      myWishlistAllItemsModelObj:
          myWishlistAllItemsModelObj ?? this.myWishlistAllItemsModelObj,
    );
  }
}
