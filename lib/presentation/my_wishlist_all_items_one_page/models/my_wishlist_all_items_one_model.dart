// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardgrid8_item_model.dart';/// This class defines the variables used in the [my_wishlist_all_items_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWishlistAllItemsOneModel extends Equatable {MyWishlistAllItemsOneModel({this.productcardgrid8ItemList = const []}) {  }

List<Productcardgrid8ItemModel> productcardgrid8ItemList;

MyWishlistAllItemsOneModel copyWith({List<Productcardgrid8ItemModel>? productcardgrid8ItemList}) { return MyWishlistAllItemsOneModel(
productcardgrid8ItemList : productcardgrid8ItemList ?? this.productcardgrid8ItemList,
); } 
@override List<Object?> get props => [productcardgrid8ItemList];
 }
