// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'close_item_model.dart';import '../../../core/app_export.dart';import 'productcard4_item_model.dart';/// This class defines the variables used in the [search_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTwoModel extends Equatable {SearchTwoModel({this.closeItemList = const [], this.productcard4ItemList = const [], }) {  }

List<CloseItemModel> closeItemList;

List<Productcard4ItemModel> productcard4ItemList;

SearchTwoModel copyWith({List<CloseItemModel>? closeItemList, List<Productcard4ItemModel>? productcard4ItemList, }) { return SearchTwoModel(
closeItemList : closeItemList ?? this.closeItemList,
productcard4ItemList : productcard4ItemList ?? this.productcard4ItemList,
); } 
@override List<Object?> get props => [closeItemList,productcard4ItemList];
 }
