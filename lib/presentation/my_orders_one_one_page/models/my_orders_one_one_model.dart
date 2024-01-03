// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist2_item_model.dart';/// This class defines the variables used in the [my_orders_one_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersOneOneModel extends Equatable {MyOrdersOneOneModel({this.orderdetailslist2ItemList = const []}) {  }

List<Orderdetailslist2ItemModel> orderdetailslist2ItemList;

MyOrdersOneOneModel copyWith({List<Orderdetailslist2ItemModel>? orderdetailslist2ItemList}) { return MyOrdersOneOneModel(
orderdetailslist2ItemList : orderdetailslist2ItemList ?? this.orderdetailslist2ItemList,
); } 
@override List<Object?> get props => [orderdetailslist2ItemList];
 }
