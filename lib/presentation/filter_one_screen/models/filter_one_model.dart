// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'frame2_item_model.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [filter_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterOneModel extends Equatable {FilterOneModel({this.frame2ItemList = const [], this.dropdownItemList = const [], }) {  }

List<Frame2ItemModel> frame2ItemList;

List<SelectionPopupModel> dropdownItemList;

FilterOneModel copyWith({List<Frame2ItemModel>? frame2ItemList, List<SelectionPopupModel>? dropdownItemList, }) { return FilterOneModel(
frame2ItemList : frame2ItemList ?? this.frame2ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [frame2ItemList,dropdownItemList];
 }
