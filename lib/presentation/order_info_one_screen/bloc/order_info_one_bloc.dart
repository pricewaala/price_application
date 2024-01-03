import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/order_info_one_screen/models/order_info_one_model.dart';
part 'order_info_one_event.dart';
part 'order_info_one_state.dart';

/// A bloc that manages the state of a OrderInfoOne according to the event that is dispatched to it.
class OrderInfoOneBloc extends Bloc<OrderInfoOneEvent, OrderInfoOneState> {
  OrderInfoOneBloc(OrderInfoOneState initialState) : super(initialState) {
    on<OrderInfoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInfoOneInitialEvent event,
    Emitter<OrderInfoOneState> emit,
  ) async {}
}
