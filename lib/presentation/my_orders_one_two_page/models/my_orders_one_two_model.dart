// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist5_item_model.dart';/// This class defines the variables used in the [my_orders_one_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersOneTwoModel extends Equatable {MyOrdersOneTwoModel({this.orderdetailslist5ItemList = const []}) {  }

List<Orderdetailslist5ItemModel> orderdetailslist5ItemList;

MyOrdersOneTwoModel copyWith({List<Orderdetailslist5ItemModel>? orderdetailslist5ItemList}) { return MyOrdersOneTwoModel(
orderdetailslist5ItemList : orderdetailslist5ItemList ?? this.orderdetailslist5ItemList,
); } 
@override List<Object?> get props => [orderdetailslist5ItemList];
 }
