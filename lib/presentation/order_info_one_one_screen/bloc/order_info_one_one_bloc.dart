import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/order_info_one_one_screen/models/order_info_one_one_model.dart';
part 'order_info_one_one_event.dart';
part 'order_info_one_one_state.dart';

/// A bloc that manages the state of a OrderInfoOneOne according to the event that is dispatched to it.
class OrderInfoOneOneBloc
    extends Bloc<OrderInfoOneOneEvent, OrderInfoOneOneState> {
  OrderInfoOneOneBloc(OrderInfoOneOneState initialState) : super(initialState) {
    on<OrderInfoOneOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInfoOneOneInitialEvent event,
    Emitter<OrderInfoOneOneState> emit,
  ) async {}
}
