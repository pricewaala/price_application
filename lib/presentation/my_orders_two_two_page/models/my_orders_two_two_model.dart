// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist6_item_model.dart';/// This class defines the variables used in the [my_orders_two_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersTwoTwoModel extends Equatable {MyOrdersTwoTwoModel({this.orderdetailslist6ItemList = const []}) {  }

List<Orderdetailslist6ItemModel> orderdetailslist6ItemList;

MyOrdersTwoTwoModel copyWith({List<Orderdetailslist6ItemModel>? orderdetailslist6ItemList}) { return MyOrdersTwoTwoModel(
orderdetailslist6ItemList : orderdetailslist6ItemList ?? this.orderdetailslist6ItemList,
); } 
@override List<Object?> get props => [orderdetailslist6ItemList];
 }
