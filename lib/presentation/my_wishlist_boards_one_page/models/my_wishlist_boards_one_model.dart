// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'miscimagecopy1_item_model.dart';import 'widget2_item_model.dart';/// This class defines the variables used in the [my_wishlist_boards_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWishlistBoardsOneModel extends Equatable {MyWishlistBoardsOneModel({this.miscimagecopy1ItemList = const [], this.widget2ItemList = const [], }) {  }

List<Miscimagecopy1ItemModel> miscimagecopy1ItemList;

List<Widget2ItemModel> widget2ItemList;

MyWishlistBoardsOneModel copyWith({List<Miscimagecopy1ItemModel>? miscimagecopy1ItemList, List<Widget2ItemModel>? widget2ItemList, }) { return MyWishlistBoardsOneModel(
miscimagecopy1ItemList : miscimagecopy1ItemList ?? this.miscimagecopy1ItemList,
widget2ItemList : widget2ItemList ?? this.widget2ItemList,
); } 
@override List<Object?> get props => [miscimagecopy1ItemList,widget2ItemList];
 }
