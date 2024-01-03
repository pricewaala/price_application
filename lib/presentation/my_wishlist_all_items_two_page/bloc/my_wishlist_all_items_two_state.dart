// ignore_for_file: must_be_immutable

part of 'my_wishlist_all_items_two_bloc.dart';

/// Represents the state of MyWishlistAllItemsTwo in the application.
class MyWishlistAllItemsTwoState extends Equatable {
  MyWishlistAllItemsTwoState({this.myWishlistAllItemsTwoModelObj});

  MyWishlistAllItemsTwoModel? myWishlistAllItemsTwoModelObj;

  @override
  List<Object?> get props => [
        myWishlistAllItemsTwoModelObj,
      ];
  MyWishlistAllItemsTwoState copyWith(
      {MyWishlistAllItemsTwoModel? myWishlistAllItemsTwoModelObj}) {
    return MyWishlistAllItemsTwoState(
      myWishlistAllItemsTwoModelObj:
          myWishlistAllItemsTwoModelObj ?? this.myWishlistAllItemsTwoModelObj,
    );
  }
}
