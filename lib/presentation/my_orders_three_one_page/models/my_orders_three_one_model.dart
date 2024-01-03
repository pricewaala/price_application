// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetailslist4_item_model.dart';/// This class defines the variables used in the [my_orders_three_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersThreeOneModel extends Equatable {MyOrdersThreeOneModel({this.orderdetailslist4ItemList = const []}) {  }

List<Orderdetailslist4ItemModel> orderdetailslist4ItemList;

MyOrdersThreeOneModel copyWith({List<Orderdetailslist4ItemModel>? orderdetailslist4ItemList}) { return MyOrdersThreeOneModel(
orderdetailslist4ItemList : orderdetailslist4ItemList ?? this.orderdetailslist4ItemList,
); } 
@override List<Object?> get props => [orderdetailslist4ItemList];
 }
