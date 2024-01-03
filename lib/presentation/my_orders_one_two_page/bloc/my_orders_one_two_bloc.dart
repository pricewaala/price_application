import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist5_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_one_two_page/models/my_orders_one_two_model.dart';
part 'my_orders_one_two_event.dart';
part 'my_orders_one_two_state.dart';

/// A bloc that manages the state of a MyOrdersOneTwo according to the event that is dispatched to it.
class MyOrdersOneTwoBloc
    extends Bloc<MyOrdersOneTwoEvent, MyOrdersOneTwoState> {
  MyOrdersOneTwoBloc(MyOrdersOneTwoState initialState) : super(initialState) {
    on<MyOrdersOneTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersOneTwoInitialEvent event,
    Emitter<MyOrdersOneTwoState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersOneTwoModelObj: state.myOrdersOneTwoModelObj?.copyWith(
      orderdetailslist5ItemList: fillOrderdetailslist5ItemList(),
    )));
  }

  List<Orderdetailslist5ItemModel> fillOrderdetailslist5ItemList() {
    return [
      Orderdetailslist5ItemModel(
          orderNumber: "Order #1524",
          orderDate: "13/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK287368838",
          quanlity: "Quanlity:",
          quantity: "2",
          subtotal: "Subtotal:",
          subtotal1: "110",
          price: "PENDING"),
      Orderdetailslist5ItemModel(
          orderNumber: "Order #1524",
          orderDate: "12/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK2873218897",
          quanlity: "Quanlity:",
          quantity: "3",
          subtotal: "Subtotal:",
          subtotal1: "230",
          price: "PENDING"),
      Orderdetailslist5ItemModel(
          orderNumber: "Order #1524",
          orderDate: "10/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK237368820",
          quanlity: "Quanlity:",
          quantity: "5",
          subtotal: "Subtotal:",
          subtotal1: "490",
          price: "PENDING")
    ];
  }
}
