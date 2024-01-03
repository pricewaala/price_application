import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/order_info_two_screen/models/order_info_two_model.dart';
part 'order_info_two_event.dart';
part 'order_info_two_state.dart';

/// A bloc that manages the state of a OrderInfoTwo according to the event that is dispatched to it.
class OrderInfoTwoBloc extends Bloc<OrderInfoTwoEvent, OrderInfoTwoState> {
  OrderInfoTwoBloc(OrderInfoTwoState initialState) : super(initialState) {
    on<OrderInfoTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInfoTwoInitialEvent event,
    Emitter<OrderInfoTwoState> emit,
  ) async {}
}
