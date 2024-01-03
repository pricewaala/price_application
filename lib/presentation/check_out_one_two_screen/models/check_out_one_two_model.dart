// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import 'checkoutonetwo_item_model.dart';/// This class defines the variables used in the [check_out_one_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutOneTwoModel extends Equatable {CheckOutOneTwoModel({this.dropdownItemList = const [], this.checkoutonetwoItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<CheckoutonetwoItemModel> checkoutonetwoItemList;

CheckOutOneTwoModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<CheckoutonetwoItemModel>? checkoutonetwoItemList, }) { return CheckOutOneTwoModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
checkoutonetwoItemList : checkoutonetwoItemList ?? this.checkoutonetwoItemList,
); } 
@override List<Object?> get props => [dropdownItemList,checkoutonetwoItemList];
 }
