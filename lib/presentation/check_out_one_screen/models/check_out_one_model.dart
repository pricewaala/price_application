// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'productcard5_item_model.dart';/// This class defines the variables used in the [check_out_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutOneModel extends Equatable {CheckOutOneModel({this.dropdownItemList = const [], this.productcard5ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Productcard5ItemModel> productcard5ItemList;

CheckOutOneModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<Productcard5ItemModel>? productcard5ItemList, }) { return CheckOutOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
productcard5ItemList : productcard5ItemList ?? this.productcard5ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,productcard5ItemList];
 }
