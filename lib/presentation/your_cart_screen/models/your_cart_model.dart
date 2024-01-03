// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist_item_model.dart';/// This class defines the variables used in the [your_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class YourCartModel extends Equatable {YourCartModel({this.productlistItemList = const []}) {  }

List<ProductlistItemModel> productlistItemList;

YourCartModel copyWith({List<ProductlistItemModel>? productlistItemList}) { return YourCartModel(
productlistItemList : productlistItemList ?? this.productlistItemList,
); } 
@override List<Object?> get props => [productlistItemList];
 }
