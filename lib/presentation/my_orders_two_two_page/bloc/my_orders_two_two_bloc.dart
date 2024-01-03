import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist6_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_two_two_page/models/my_orders_two_two_model.dart';
part 'my_orders_two_two_event.dart';
part 'my_orders_two_two_state.dart';

/// A bloc that manages the state of a MyOrdersTwoTwo according to the event that is dispatched to it.
class MyOrdersTwoTwoBloc
    extends Bloc<MyOrdersTwoTwoEvent, MyOrdersTwoTwoState> {
  MyOrdersTwoTwoBloc(MyOrdersTwoTwoState initialState) : super(initialState) {
    on<MyOrdersTwoTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersTwoTwoInitialEvent event,
    Emitter<MyOrdersTwoTwoState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersTwoTwoModelObj: state.myOrdersTwoTwoModelObj?.copyWith(
      orderdetailslist6ItemList: fillOrderdetailslist6ItemList(),
    )));
  }

  List<Orderdetailslist6ItemModel> fillOrderdetailslist6ItemList() {
    return [
      Orderdetailslist6ItemModel(
          orderNumber: "Order #1514",
          orderDate: "13/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK987362341",
          quantityLabel: "Quanlity:",
          quantity: "2",
          subtotalLabel: "Subtotal:",
          subtotal: "110",
          deliveryStatus: "DELIVERED"),
      Orderdetailslist6ItemModel(
          orderNumber: "Order #1679",
          orderDate: "12/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK3873218890",
          quantityLabel: "Quanlity:",
          quantity: "3",
          subtotalLabel: "Subtotal:",
          subtotal: "450",
          deliveryStatus: "DELIVERED"),
      Orderdetailslist6ItemModel(
          orderNumber: "Order #1671",
          orderDate: "10/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK237368881",
          quantityLabel: "Quanlity:",
          quantity: "3",
          subtotalLabel: "Subtotal:",
          subtotal: "400",
          deliveryStatus: "DELIVERED")
    ];
  }
}
