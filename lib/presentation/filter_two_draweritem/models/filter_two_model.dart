// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'signal_item_model.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'filtertwo_item_model.dart';/// This class defines the variables used in the [filter_two_draweritem],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterTwoModel extends Equatable {FilterTwoModel({this.signalItemList = const [], this.dropdownItemList = const [], this.filtertwoItemList = const [], }) {  }

List<SignalItemModel> signalItemList;

List<SelectionPopupModel> dropdownItemList;

List<FiltertwoItemModel> filtertwoItemList;

FilterTwoModel copyWith({List<SignalItemModel>? signalItemList, List<SelectionPopupModel>? dropdownItemList, List<FiltertwoItemModel>? filtertwoItemList, }) { return FilterTwoModel(
signalItemList : signalItemList ?? this.signalItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
filtertwoItemList : filtertwoItemList ?? this.filtertwoItemList,
); } 
@override List<Object?> get props => [signalItemList,dropdownItemList,filtertwoItemList];
 }
