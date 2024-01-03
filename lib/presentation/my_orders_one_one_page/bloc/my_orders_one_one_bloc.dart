import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist2_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_one_one_page/models/my_orders_one_one_model.dart';
part 'my_orders_one_one_event.dart';
part 'my_orders_one_one_state.dart';

/// A bloc that manages the state of a MyOrdersOneOne according to the event that is dispatched to it.
class MyOrdersOneOneBloc
    extends Bloc<MyOrdersOneOneEvent, MyOrdersOneOneState> {
  MyOrdersOneOneBloc(MyOrdersOneOneState initialState) : super(initialState) {
    on<MyOrdersOneOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersOneOneInitialEvent event,
    Emitter<MyOrdersOneOneState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersOneOneModelObj: state.myOrdersOneOneModelObj?.copyWith(
      orderdetailslist2ItemList: fillOrderdetailslist2ItemList(),
    )));
  }

  List<Orderdetailslist2ItemModel> fillOrderdetailslist2ItemList() {
    return [
      Orderdetailslist2ItemModel(
          orderNumber: "Order #1524",
          orderDate: "13/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK287368838",
          quanlity: "Quanlity:",
          quantity: "2",
          subtotal: "Subtotal:",
          subtotal1: "110",
          price: "PENDING")
    ];
  }
}
