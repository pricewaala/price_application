// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'recentsearch4_item_model.dart';import '../../../core/app_export.dart';import 'productcard16_item_model.dart';/// This class defines the variables used in the [search_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchThreeModel extends Equatable {SearchThreeModel({this.recentsearch4ItemList = const [], this.productcard16ItemList = const [], }) {  }

List<Recentsearch4ItemModel> recentsearch4ItemList;

List<Productcard16ItemModel> productcard16ItemList;

SearchThreeModel copyWith({List<Recentsearch4ItemModel>? recentsearch4ItemList, List<Productcard16ItemModel>? productcard16ItemList, }) { return SearchThreeModel(
recentsearch4ItemList : recentsearch4ItemList ?? this.recentsearch4ItemList,
productcard16ItemList : productcard16ItemList ?? this.productcard16ItemList,
); } 
@override List<Object?> get props => [recentsearch4ItemList,productcard16ItemList];
 }
