import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist3_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_two_one_page/models/my_orders_two_one_model.dart';
part 'my_orders_two_one_event.dart';
part 'my_orders_two_one_state.dart';

/// A bloc that manages the state of a MyOrdersTwoOne according to the event that is dispatched to it.
class MyOrdersTwoOneBloc
    extends Bloc<MyOrdersTwoOneEvent, MyOrdersTwoOneState> {
  MyOrdersTwoOneBloc(MyOrdersTwoOneState initialState) : super(initialState) {
    on<MyOrdersTwoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersTwoOneInitialEvent event,
    Emitter<MyOrdersTwoOneState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersTwoOneModelObj: state.myOrdersTwoOneModelObj?.copyWith(
      orderdetailslist3ItemList: fillOrderdetailslist3ItemList(),
    )));
  }

  List<Orderdetailslist3ItemModel> fillOrderdetailslist3ItemList() {
    return [
      Orderdetailslist3ItemModel(
          orderNumber: "Order #1514",
          orderDate: "13/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK987362341",
          quanlity: "Quanlity:",
          quantity: "2",
          subtotal: "Subtotal:",
          subtotal1: "110",
          delivered: "DELIVERED"),
      Orderdetailslist3ItemModel(
          orderNumber: "Order #1679",
          orderDate: "12/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK3873218890",
          quanlity: "Quanlity:",
          quantity: "3",
          subtotal: "Subtotal:",
          subtotal1: "450",
          delivered: "DELIVERED"),
      Orderdetailslist3ItemModel(
          orderNumber: "Order #1671",
          orderDate: "10/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK237368881",
          quanlity: "Quanlity:",
          quantity: "3",
          subtotal: "Subtotal:",
          subtotal1: "400",
          delivered: "DELIVERED")
    ];
  }
}
