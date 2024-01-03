import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetails_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_one_page/models/my_orders_one_model.dart';
part 'my_orders_one_event.dart';
part 'my_orders_one_state.dart';

/// A bloc that manages the state of a MyOrdersOne according to the event that is dispatched to it.
class MyOrdersOneBloc extends Bloc<MyOrdersOneEvent, MyOrdersOneState> {
  MyOrdersOneBloc(MyOrdersOneState initialState) : super(initialState) {
    on<MyOrdersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersOneInitialEvent event,
    Emitter<MyOrdersOneState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersOneModelObj: state.myOrdersOneModelObj?.copyWith(
      orderdetailsItemList: fillOrderdetailsItemList(),
    )));
  }

  List<OrderdetailsItemModel> fillOrderdetailsItemList() {
    return [
      OrderdetailsItemModel(
          orderNumberText: "Order #1524",
          orderDateText: "13/05/2021",
          trackingNumber: "Tracking number: ",
          trackingNumberText: " IK287368838",
          quanlity: "Quanlity:",
          quantityText: "2",
          subtotal: "Subtotal:",
          subtotalText: "110",
          priceText: "PENDING")
    ];
  }
}
