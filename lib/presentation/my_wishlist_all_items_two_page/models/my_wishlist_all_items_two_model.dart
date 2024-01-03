// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardgrid6_item_model.dart';/// This class defines the variables used in the [my_wishlist_all_items_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyWishlistAllItemsTwoModel extends Equatable {MyWishlistAllItemsTwoModel({this.productcardgrid6ItemList = const []}) {  }

List<Productcardgrid6ItemModel> productcardgrid6ItemList;

MyWishlistAllItemsTwoModel copyWith({List<Productcardgrid6ItemModel>? productcardgrid6ItemList}) { return MyWishlistAllItemsTwoModel(
productcardgrid6ItemList : productcardgrid6ItemList ?? this.productcardgrid6ItemList,
); } 
@override List<Object?> get props => [productcardgrid6ItemList];
 }
