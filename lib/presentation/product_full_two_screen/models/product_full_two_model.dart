// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'arrowleft_item_model.dart';import '../../../core/app_export.dart';import 'productcardlist1_item_model.dart';/// This class defines the variables used in the [product_full_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductFullTwoModel extends Equatable {ProductFullTwoModel({this.arrowleftItemList = const [], this.productcardlist1ItemList = const [], }) {  }

List<ArrowleftItemModel> arrowleftItemList;

List<Productcardlist1ItemModel> productcardlist1ItemList;

ProductFullTwoModel copyWith({List<ArrowleftItemModel>? arrowleftItemList, List<Productcardlist1ItemModel>? productcardlist1ItemList, }) { return ProductFullTwoModel(
arrowleftItemList : arrowleftItemList ?? this.arrowleftItemList,
productcardlist1ItemList : productcardlist1ItemList ?? this.productcardlist1ItemList,
); } 
@override List<Object?> get props => [arrowleftItemList,productcardlist1ItemList];
 }
