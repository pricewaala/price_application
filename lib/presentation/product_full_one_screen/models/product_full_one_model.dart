// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view3_item_model.dart';import '../../../core/app_export.dart';import 'productcardlist_item_model.dart';/// This class defines the variables used in the [product_full_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductFullOneModel extends Equatable {ProductFullOneModel({this.view3ItemList = const [], this.productcardlistItemList = const [], }) {  }

List<View3ItemModel> view3ItemList;

List<ProductcardlistItemModel> productcardlistItemList;

ProductFullOneModel copyWith({List<View3ItemModel>? view3ItemList, List<ProductcardlistItemModel>? productcardlistItemList, }) { return ProductFullOneModel(
view3ItemList : view3ItemList ?? this.view3ItemList,
productcardlistItemList : productcardlistItemList ?? this.productcardlistItemList,
); } 
@override List<Object?> get props => [view3ItemList,productcardlistItemList];
 }
