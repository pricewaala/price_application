// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'recentsearch6_item_model.dart';import '../../../core/app_export.dart';import 'productcard17_item_model.dart';/// This class defines the variables used in the [search_two1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTwo1Model extends Equatable {SearchTwo1Model({this.recentsearch6ItemList = const [], this.productcard17ItemList = const [], }) {  }

List<Recentsearch6ItemModel> recentsearch6ItemList;

List<Productcard17ItemModel> productcard17ItemList;

SearchTwo1Model copyWith({List<Recentsearch6ItemModel>? recentsearch6ItemList, List<Productcard17ItemModel>? productcard17ItemList, }) { return SearchTwo1Model(
recentsearch6ItemList : recentsearch6ItemList ?? this.recentsearch6ItemList,
productcard17ItemList : productcard17ItemList ?? this.productcard17ItemList,
); } 
@override List<Object?> get props => [recentsearch6ItemList,productcard17ItemList];
 }
