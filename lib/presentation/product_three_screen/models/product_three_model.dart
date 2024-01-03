// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view5_item_model.dart';/// This class defines the variables used in the [product_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductThreeModel extends Equatable {ProductThreeModel({this.view5ItemList = const []}) {  }

List<View5ItemModel> view5ItemList;

ProductThreeModel copyWith({List<View5ItemModel>? view5ItemList}) { return ProductThreeModel(
view5ItemList : view5ItemList ?? this.view5ItemList,
); } 
@override List<Object?> get props => [view5ItemList];
 }
