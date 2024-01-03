// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'recentsearch_item_model.dart';import '../../../core/app_export.dart';import 'productcard3_item_model.dart';/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {SearchModel({this.recentsearchItemList = const [], this.productcard3ItemList = const [], }) {  }

List<RecentsearchItemModel> recentsearchItemList;

List<Productcard3ItemModel> productcard3ItemList;

SearchModel copyWith({List<RecentsearchItemModel>? recentsearchItemList, List<Productcard3ItemModel>? productcard3ItemList, }) { return SearchModel(
recentsearchItemList : recentsearchItemList ?? this.recentsearchItemList,
productcard3ItemList : productcard3ItemList ?? this.productcard3ItemList,
); } 
@override List<Object?> get props => [recentsearchItemList,productcard3ItemList];
 }
