// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist_item_model.dart';/// This class defines the variables used in the [my_orders_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersTwoModel extends Equatable {MyOrdersTwoModel({this.orderdetailslistItemList = const []}) {  }

List<OrderdetailslistItemModel> orderdetailslistItemList;

MyOrdersTwoModel copyWith({List<OrderdetailslistItemModel>? orderdetailslistItemList}) { return MyOrdersTwoModel(
orderdetailslistItemList : orderdetailslistItemList ?? this.orderdetailslistItemList,
); } 
@override List<Object?> get props => [orderdetailslistItemList];
 }
