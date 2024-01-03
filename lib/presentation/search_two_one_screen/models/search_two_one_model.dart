// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'close2_item_model.dart';import '../../../core/app_export.dart';import 'productcard12_item_model.dart';/// This class defines the variables used in the [search_two_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTwoOneModel extends Equatable {SearchTwoOneModel({this.close2ItemList = const [], this.productcard12ItemList = const [], }) {  }

List<Close2ItemModel> close2ItemList;

List<Productcard12ItemModel> productcard12ItemList;

SearchTwoOneModel copyWith({List<Close2ItemModel>? close2ItemList, List<Productcard12ItemModel>? productcard12ItemList, }) { return SearchTwoOneModel(
close2ItemList : close2ItemList ?? this.close2ItemList,
productcard12ItemList : productcard12ItemList ?? this.productcard12ItemList,
); } 
@override List<Object?> get props => [close2ItemList,productcard12ItemList];
 }
