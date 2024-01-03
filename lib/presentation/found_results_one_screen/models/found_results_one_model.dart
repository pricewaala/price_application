// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'productcardgrid3_item_model.dart';/// This class defines the variables used in the [found_results_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FoundResultsOneModel extends Equatable {FoundResultsOneModel({this.dropdownItemList = const [], this.productcardgrid3ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Productcardgrid3ItemModel> productcardgrid3ItemList;

FoundResultsOneModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<Productcardgrid3ItemModel>? productcardgrid3ItemList, }) { return FoundResultsOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
productcardgrid3ItemList : productcardgrid3ItemList ?? this.productcardgrid3ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,productcardgrid3ItemList];
 }
