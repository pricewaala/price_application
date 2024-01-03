import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist1_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_three_page/models/my_orders_three_model.dart';
part 'my_orders_three_event.dart';
part 'my_orders_three_state.dart';

/// A bloc that manages the state of a MyOrdersThree according to the event that is dispatched to it.
class MyOrdersThreeBloc extends Bloc<MyOrdersThreeEvent, MyOrdersThreeState> {
  MyOrdersThreeBloc(MyOrdersThreeState initialState) : super(initialState) {
    on<MyOrdersThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersThreeInitialEvent event,
    Emitter<MyOrdersThreeState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersThreeModelObj: state.myOrdersThreeModelObj?.copyWith(
      orderdetailslist1ItemList: fillOrderdetailslist1ItemList(),
    )));
  }

  List<Orderdetailslist1ItemModel> fillOrderdetailslist1ItemList() {
    return [
      Orderdetailslist1ItemModel(
          orderNumber: "Order #1829",
          orderDate: "10/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumber1: " IK287368831",
          quanlity: "Quanlity:",
          quantity: "2",
          subtotal: "Subtotal:",
          subtotal1: "210",
          status: "CANCELED"),
      Orderdetailslist1ItemModel(
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
