import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/order_info_two_one_screen/models/order_info_two_one_model.dart';
part 'order_info_two_one_event.dart';
part 'order_info_two_one_state.dart';

/// A bloc that manages the state of a OrderInfoTwoOne according to the event that is dispatched to it.
class OrderInfoTwoOneBloc
    extends Bloc<OrderInfoTwoOneEvent, OrderInfoTwoOneState> {
  OrderInfoTwoOneBloc(OrderInfoTwoOneState initialState) : super(initialState) {
    on<OrderInfoTwoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInfoTwoOneInitialEvent event,
    Emitter<OrderInfoTwoOneState> emit,
  ) async {}
}
