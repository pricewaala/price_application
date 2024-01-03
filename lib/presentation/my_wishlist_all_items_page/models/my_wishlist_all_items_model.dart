// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardgrid2_item_model.dart';/// This class defines the variables used in the [my_wishlist_all_items_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWishlistAllItemsModel extends Equatable {MyWishlistAllItemsModel({this.productcardgrid2ItemList = const []}) {  }

List<Productcardgrid2ItemModel> productcardgrid2ItemList;

MyWishlistAllItemsModel copyWith({List<Productcardgrid2ItemModel>? productcardgrid2ItemList}) { return MyWishlistAllItemsModel(
productcardgrid2ItemList : productcardgrid2ItemList ?? this.productcardgrid2ItemList,
); } 
@override List<Object?> get props => [productcardgrid2ItemList];
 }
