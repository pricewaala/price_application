// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'dynamicview1_item_model.dart';/// This class defines the variables used in the [voucher_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VoucherOneModel extends Equatable {VoucherOneModel({this.dynamicview1ItemList = const []}) {  }

List<Dynamicview1ItemModel> dynamicview1ItemList;

VoucherOneModel copyWith({List<Dynamicview1ItemModel>? dynamicview1ItemList}) { return VoucherOneModel(
dynamicview1ItemList : dynamicview1ItemList ?? this.dynamicview1ItemList,
); } 
@override List<Object?> get props => [dynamicview1ItemList];
 }
