// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist1_item_model.dart';/// This class defines the variables used in the [my_orders_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersThreeModel extends Equatable {MyOrdersThreeModel({this.orderdetailslist1ItemList = const []}) {  }

List<Orderdetailslist1ItemModel> orderdetailslist1ItemList;

MyOrdersThreeModel copyWith({List<Orderdetailslist1ItemModel>? orderdetailslist1ItemList}) { return MyOrdersThreeModel(
orderdetailslist1ItemList : orderdetailslist1ItemList ?? this.orderdetailslist1ItemList,
); } 
@override List<Object?> get props => [orderdetailslist1ItemList];
 }
