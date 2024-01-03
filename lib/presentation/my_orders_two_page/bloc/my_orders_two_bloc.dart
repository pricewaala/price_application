import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_two_page/models/my_orders_two_model.dart';
part 'my_orders_two_event.dart';
part 'my_orders_two_state.dart';

/// A bloc that manages the state of a MyOrdersTwo according to the event that is dispatched to it.
class MyOrdersTwoBloc extends Bloc<MyOrdersTwoEvent, MyOrdersTwoState> {
  MyOrdersTwoBloc(MyOrdersTwoState initialState) : super(initialState) {
    on<MyOrdersTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersTwoInitialEvent event,
    Emitter<MyOrdersTwoState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersTwoModelObj: state.myOrdersTwoModelObj?.copyWith(
      orderdetailslistItemList: fillOrderdetailslistItemList(),
    )));
  }

  List<OrderdetailslistItemModel> fillOrderdetailslistItemList() {
    return [
      OrderdetailslistItemModel(
          orderNumber: "Order #1514",
          orderDate: "13/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK987362341",
          quantityLabel: "Quanlity:",
          quantity: "2",
          subtotalLabel: "Subtotal:",
          subtotal: "110",
          deliveryStatus: "DELIVERED"),
      OrderdetailslistItemModel(
          orderNumber: "Order #1679",
          orderDate: "12/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK3873218890",
          quantityLabel: "Quanlity:",
          quantity: "3",
          subtotalLabel: "Subtotal:",
          subtotal: "450",
          deliveryStatus: "DELIVERED"),
      OrderdetailslistItemModel(
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
