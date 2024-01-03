// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'dynamicview_item_model.dart';/// This class defines the variables used in the [voucher_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VoucherTwoModel extends Equatable {VoucherTwoModel({this.dynamicviewItemList = const []}) {  }

List<DynamicviewItemModel> dynamicviewItemList;

VoucherTwoModel copyWith({List<DynamicviewItemModel>? dynamicviewItemList}) { return VoucherTwoModel(
dynamicviewItemList : dynamicviewItemList ?? this.dynamicviewItemList,
); } 
@override List<Object?> get props => [dynamicviewItemList];
 }
