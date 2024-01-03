// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'productcardgrid_item_model.dart';/// This class defines the variables used in the [found_results_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FoundResultsModel extends Equatable {FoundResultsModel({this.dropdownItemList = const [], this.productcardgridItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<ProductcardgridItemModel> productcardgridItemList;

FoundResultsModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<ProductcardgridItemModel>? productcardgridItemList, }) { return FoundResultsModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
productcardgridItemList : productcardgridItemList ?? this.productcardgridItemList,
); } 
@override List<Object?> get props => [dropdownItemList,productcardgridItemList];
 }
