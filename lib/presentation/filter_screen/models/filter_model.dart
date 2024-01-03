// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'frame_item_model.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel extends Equatable {FilterModel({this.frameItemList = const [], this.dropdownItemList = const [], }) {  }

List<FrameItemModel> frameItemList;

List<SelectionPopupModel> dropdownItemList;

FilterModel copyWith({List<FrameItemModel>? frameItemList, List<SelectionPopupModel>? dropdownItemList, }) { return FilterModel(
frameItemList : frameItemList ?? this.frameItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [frameItemList,dropdownItemList];
 }
