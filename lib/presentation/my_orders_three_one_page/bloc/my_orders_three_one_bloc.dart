import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetailslist4_item_model.dart';
import 'package:price_s_application2/presentation/my_orders_three_one_page/models/my_orders_three_one_model.dart';
part 'my_orders_three_one_event.dart';
part 'my_orders_three_one_state.dart';

/// A bloc that manages the state of a MyOrdersThreeOne according to the event that is dispatched to it.
class MyOrdersThreeOneBloc
    extends Bloc<MyOrdersThreeOneEvent, MyOrdersThreeOneState> {
  MyOrdersThreeOneBloc(MyOrdersThreeOneState initialState)
      : super(initialState) {
    on<MyOrdersThreeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersThreeOneInitialEvent event,
    Emitter<MyOrdersThreeOneState> emit,
  ) async {
    emit(state.copyWith(
        myOrdersThreeOneModelObj: state.myOrdersThreeOneModelObj?.copyWith(
      orderdetailslist4ItemList: fillOrderdetailslist4ItemList(),
    )));
  }

  List<Orderdetailslist4ItemModel> fillOrderdetailslist4ItemList() {
    return [
      Orderdetailslist4ItemModel(
          orderNumber: "Order #1829",
          orderDate: "10/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK287368831",
          quantityLabel: "Quanlity:",
          quantity: "2",
          subtotalLabel: "Subtotal:",
          subtotal: "210",
          status: "CANCELED"),
      Orderdetailslist4ItemModel(
          orderNumber: "Order #1824",
          orderDate: "10/05/2021",
          trackingLabel: "Tracking number: ",
          trackingNumber: " IK2882918812",
          quantityLabel: "Quanlity:",
          quantity: "3",
          subtotalLabel: "Subtotal:",
          subtotal: "120",
          status: "CANCELED")
    ];
  }
}
