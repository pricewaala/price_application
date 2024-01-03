// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetails_item_model.dart';/// This class defines the variables used in the [my_orders_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersOneModel extends Equatable {MyOrdersOneModel({this.orderdetailsItemList = const []}) {  }

List<OrderdetailsItemModel> orderdetailsItemList;

MyOrdersOneModel copyWith({List<OrderdetailsItemModel>? orderdetailsItemList}) { return MyOrdersOneModel(
orderdetailsItemList : orderdetailsItemList ?? this.orderdetailsItemList,
); } 
@override List<Object?> get props => [orderdetailsItemList];
 }
