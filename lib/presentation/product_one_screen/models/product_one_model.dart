// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view2_item_model.dart';/// This class defines the variables used in the [product_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductOneModel extends Equatable {ProductOneModel({this.view2ItemList = const []}) {  }

List<View2ItemModel> view2ItemList;

ProductOneModel copyWith({List<View2ItemModel>? view2ItemList}) { return ProductOneModel(
view2ItemList : view2ItemList ?? this.view2ItemList,
); } 
@override List<Object?> get props => [view2ItemList];
 }
