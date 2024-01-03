// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view1_item_model.dart';/// This class defines the variables used in the [product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductModel extends Equatable {ProductModel({this.view1ItemList = const []}) {  }

List<View1ItemModel> view1ItemList;

ProductModel copyWith({List<View1ItemModel>? view1ItemList}) { return ProductModel(
view1ItemList : view1ItemList ?? this.view1ItemList,
); } 
@override List<Object?> get props => [view1ItemList];
 }
