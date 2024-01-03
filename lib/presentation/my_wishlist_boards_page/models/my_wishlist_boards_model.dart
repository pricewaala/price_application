// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'miscimagecopy_item_model.dart';import 'widget1_item_model.dart';/// This class defines the variables used in the [my_wishlist_boards_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWishlistBoardsModel extends Equatable {MyWishlistBoardsModel({this.miscimagecopyItemList = const [], this.widget1ItemList = const [], }) {  }

List<MiscimagecopyItemModel> miscimagecopyItemList;

List<Widget1ItemModel> widget1ItemList;

MyWishlistBoardsModel copyWith({List<MiscimagecopyItemModel>? miscimagecopyItemList, List<Widget1ItemModel>? widget1ItemList, }) { return MyWishlistBoardsModel(
miscimagecopyItemList : miscimagecopyItemList ?? this.miscimagecopyItemList,
widget1ItemList : widget1ItemList ?? this.widget1ItemList,
); } 
@override List<Object?> get props => [miscimagecopyItemList,widget1ItemList];
 }
