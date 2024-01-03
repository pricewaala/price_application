// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist3_item_model.dart';/// This class defines the variables used in the [my_orders_two_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersTwoOneModel extends Equatable {MyOrdersTwoOneModel({this.orderdetailslist3ItemList = const []}) {  }

List<Orderdetailslist3ItemModel> orderdetailslist3ItemList;

MyOrdersTwoOneModel copyWith({List<Orderdetailslist3ItemModel>? orderdetailslist3ItemList}) { return MyOrdersTwoOneModel(
orderdetailslist3ItemList : orderdetailslist3ItemList ?? this.orderdetailslist3ItemList,
); } 
@override List<Object?> get props => [orderdetailslist3ItemList];
 }
