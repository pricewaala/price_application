import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist7_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_three_two_page/models/my_orders_three_two_model.dart';
part 'my_orders_three_two_event.dart';
part 'my_orders_three_two_state.dart';

/// A bloc that manages the state of a MyOrdersThreeTwo according to the event that is dispatched to it.
class MyOrdersThreeTwoBloc
    extends Bloc<MyOrdersThreeTwoEvent, MyOrdersThreeTwoState> {
  MyOrdersThreeTwoBloc(MyOrdersThreeTwoState initialState)
      : super(initialState) {
    on<MyOrdersThreeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersThreeTwoInitialEvent event,
    Emitter<MyOrdersThreeTwoState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersThreeTwoModelObj: state.myOrdersThreeTwoModelObj?.copyWith(
      orderdetailslist7ItemList: fillOrderdetailslist7ItemList(),
    )));
  }

  List<Orderdetailslist7ItemModel> fillOrderdetailslist7ItemList() {
    return [
      Orderdetailslist7ItemModel(
          orderNumber: "Order #1829",
          orderDate: "10/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK287368831",
          quanlity: "Quanlity:",
          quantity: "2",
          subtotal: "Subtotal:",
          subtotal1: "210",
          status: "CANCELED"),
      Orderdetailslist7ItemModel(
          orderNumber: "Order #1824",
          orderDate: "10/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK2882918812",
          quanlity: "Quanlity:",
          quantity: "3",
          subtotal: "Subtotal:",
          subtotal1: "120",
          status: "CANCELED")
    ];
  }
}
