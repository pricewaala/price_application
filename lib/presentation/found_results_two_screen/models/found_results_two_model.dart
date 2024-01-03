// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'productcardgrid4_item_model.dart';/// This class defines the variables used in the [found_results_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FoundResultsTwoModel extends Equatable {FoundResultsTwoModel({this.dropdownItemList = const [], this.productcardgrid4ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Productcardgrid4ItemModel> productcardgrid4ItemList;

FoundResultsTwoModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<Productcardgrid4ItemModel>? productcardgrid4ItemList, }) { return FoundResultsTwoModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
productcardgrid4ItemList : productcardgrid4ItemList ?? this.productcardgrid4ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,productcardgrid4ItemList];
 }
