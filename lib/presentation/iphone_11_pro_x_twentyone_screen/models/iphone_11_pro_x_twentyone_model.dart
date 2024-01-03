// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist3_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_x_twentyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProXTwentyoneModel extends Equatable {Iphone11ProXTwentyoneModel({this.productlist3ItemList = const []}) {  }

List<Productlist3ItemModel> productlist3ItemList;

Iphone11ProXTwentyoneModel copyWith({List<Productlist3ItemModel>? productlist3ItemList}) { return Iphone11ProXTwentyoneModel(
productlist3ItemList : productlist3ItemList ?? this.productlist3ItemList,
); } 
@override List<Object?> get props => [productlist3ItemList];
 }
