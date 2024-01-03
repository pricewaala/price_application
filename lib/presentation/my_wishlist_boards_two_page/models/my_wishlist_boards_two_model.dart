// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'miscimagecopy2_item_model.dart';/// This class defines the variables used in the [my_wishlist_boards_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWishlistBoardsTwoModel extends Equatable {MyWishlistBoardsTwoModel({this.miscimagecopy2ItemList = const []}) {  }

List<Miscimagecopy2ItemModel> miscimagecopy2ItemList;

MyWishlistBoardsTwoModel copyWith({List<Miscimagecopy2ItemModel>? miscimagecopy2ItemList}) { return MyWishlistBoardsTwoModel(
miscimagecopy2ItemList : miscimagecopy2ItemList ?? this.miscimagecopy2ItemList,
); } 
@override List<Object?> get props => [miscimagecopy2ItemList];
 }
