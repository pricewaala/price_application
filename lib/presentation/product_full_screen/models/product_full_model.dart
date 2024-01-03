// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view_item_model.dart';import '../../../core/app_export.dart';import 'productcardsection_item_model.dart';/// This class defines the variables used in the [product_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductFullModel extends Equatable {ProductFullModel({this.viewItemList = const [], this.productcardsectionItemList = const [], }) {  }

List<ViewItemModel> viewItemList;

List<ProductcardsectionItemModel> productcardsectionItemList;

ProductFullModel copyWith({List<ViewItemModel>? viewItemList, List<ProductcardsectionItemModel>? productcardsectionItemList, }) { return ProductFullModel(
viewItemList : viewItemList ?? this.viewItemList,
productcardsectionItemList : productcardsectionItemList ?? this.productcardsectionItemList,
); } 
@override List<Object?> get props => [viewItemList,productcardsectionItemList];
 }
