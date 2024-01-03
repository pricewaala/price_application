// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist2_item_model.dart';/// This class defines the variables used in the [your_cart_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class YourCartTwoModel extends Equatable {YourCartTwoModel({this.productlist2ItemList = const []}) {  }

List<Productlist2ItemModel> productlist2ItemList;

YourCartTwoModel copyWith({List<Productlist2ItemModel>? productlist2ItemList}) { return YourCartTwoModel(
productlist2ItemList : productlist2ItemList ?? this.productlist2ItemList,
); } 
@override List<Object?> get props => [productlist2ItemList];
 }
