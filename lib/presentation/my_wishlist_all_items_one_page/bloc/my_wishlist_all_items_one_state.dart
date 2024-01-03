// ignore_for_file: must_be_immutable

part of 'my_wishlist_all_items_one_bloc.dart';

/// Represents the state of MyWishlistAllItemsOne in the application.
class MyWishlistAllItemsOneState extends Equatable {
  MyWishlistAllItemsOneState({this.myWishlistAllItemsOneModelObj});

  MyWishlistAllItemsOneModel? myWishlistAllItemsOneModelObj;

  @override
  List<Object?> get props => [
        myWishlistAllItemsOneModelObj,
      ];
  MyWishlistAllItemsOneState copyWith(
      {MyWishlistAllItemsOneModel? myWishlistAllItemsOneModelObj}) {
    return MyWishlistAllItemsOneState(
      myWishlistAllItemsOneModelObj:
          myWishlistAllItemsOneModelObj ?? this.myWishlistAllItemsOneModelObj,
    );
  }
}
