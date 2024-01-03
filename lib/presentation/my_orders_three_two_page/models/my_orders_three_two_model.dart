// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist7_item_model.dart';/// This class defines the variables used in the [my_orders_three_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersThreeTwoModel extends Equatable {MyOrdersThreeTwoModel({this.orderdetailslist7ItemList = const []}) {  }

List<Orderdetailslist7ItemModel> orderdetailslist7ItemList;

MyOrdersThreeTwoModel copyWith({List<Orderdetailslist7ItemModel>? orderdetailslist7ItemList}) { return MyOrdersThreeTwoModel(
orderdetailslist7ItemList : orderdetailslist7ItemList ?? this.orderdetailslist7ItemList,
); } 
@override List<Object?> get props => [orderdetailslist7ItemList];
 }
