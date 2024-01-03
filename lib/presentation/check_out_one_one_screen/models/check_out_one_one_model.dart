// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:price_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'deliveryoptions_item_model.dart';/// This class defines the variables used in the [check_out_one_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckOutOneOneModel extends Equatable {CheckOutOneOneModel({this.dropdownItemList = const [], this.deliveryoptionsItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<DeliveryoptionsItemModel> deliveryoptionsItemList;

CheckOutOneOneModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<DeliveryoptionsItemModel>? deliveryoptionsItemList, }) { return CheckOutOneOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
deliveryoptionsItemList : deliveryoptionsItemList ?? this.deliveryoptionsItemList,
); } 
@override List<Object?> get props => [dropdownItemList,deliveryoptionsItemList];
 }
