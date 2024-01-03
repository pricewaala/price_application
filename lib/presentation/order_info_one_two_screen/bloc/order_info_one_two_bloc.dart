import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/order_info_one_two_screen/models/order_info_one_two_model.dart';
part 'order_info_one_two_event.dart';
part 'order_info_one_two_state.dart';

/// A bloc that manages the state of a OrderInfoOneTwo according to the event that is dispatched to it.
class OrderInfoOneTwoBloc
    extends Bloc<OrderInfoOneTwoEvent, OrderInfoOneTwoState> {
  OrderInfoOneTwoBloc(OrderInfoOneTwoState initialState) : super(initialState) {
    on<OrderInfoOneTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInfoOneTwoInitialEvent event,
    Emitter<OrderInfoOneTwoState> emit,
  ) async {}
}
