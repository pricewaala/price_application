// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view4_item_model.dart';/// This class defines the variables used in the [product_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductTwoModel extends Equatable {ProductTwoModel({this.view4ItemList = const []}) {  }

List<View4ItemModel> view4ItemList;

ProductTwoModel copyWith({List<View4ItemModel>? view4ItemList}) { return ProductTwoModel(
view4ItemList : view4ItemList ?? this.view4ItemList,
); } 
@override List<Object?> get props => [view4ItemList];
 }
