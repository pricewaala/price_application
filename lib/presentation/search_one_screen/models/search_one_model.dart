// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'recentsearch2_item_model.dart';import '../../../core/app_export.dart';import 'productcard11_item_model.dart';/// This class defines the variables used in the [search_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchOneModel extends Equatable {SearchOneModel({this.recentsearch2ItemList = const [], this.productcard11ItemList = const [], }) {  }

List<Recentsearch2ItemModel> recentsearch2ItemList;

List<Productcard11ItemModel> productcard11ItemList;

SearchOneModel copyWith({List<Recentsearch2ItemModel>? recentsearch2ItemList, List<Productcard11ItemModel>? productcard11ItemList, }) { return SearchOneModel(
recentsearch2ItemList : recentsearch2ItemList ?? this.recentsearch2ItemList,
productcard11ItemList : productcard11ItemList ?? this.productcard11ItemList,
); } 
@override List<Object?> get props => [recentsearch2ItemList,productcard11ItemList];
 }
