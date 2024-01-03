import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/order_info_two_two_screen/models/order_info_two_two_model.dart';
part 'order_info_two_two_event.dart';
part 'order_info_two_two_state.dart';

/// A bloc that manages the state of a OrderInfoTwoTwo according to the event that is dispatched to it.
class OrderInfoTwoTwoBloc
    extends Bloc<OrderInfoTwoTwoEvent, OrderInfoTwoTwoState> {
  OrderInfoTwoTwoBloc(OrderInfoTwoTwoState initialState) : super(initialState) {
    on<OrderInfoTwoTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInfoTwoTwoInitialEvent event,
    Emitter<OrderInfoTwoTwoState> emit,
  ) async {}
}
