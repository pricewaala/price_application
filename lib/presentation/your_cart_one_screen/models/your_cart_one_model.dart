// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist1_item_model.dart';/// This class defines the variables used in the [your_cart_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class YourCartOneModel extends Equatable {YourCartOneModel({this.productlist1ItemList = const []}) {  }

List<Productlist1ItemModel> productlist1ItemList;

YourCartOneModel copyWith({List<Productlist1ItemModel>? productlist1ItemList}) { return YourCartOneModel(
productlist1ItemList : productlist1ItemList ?? this.productlist1ItemList,
); } 
@override List<Object?> get props => [productlist1ItemList];
 }
