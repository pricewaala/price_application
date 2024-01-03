import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/my_orders_three_tab_container_screen/models/my_orders_three_tab_container_model.dart';
part 'my_orders_three_tab_container_event.dart';
part 'my_orders_three_tab_container_state.dart';

/// A bloc that manages the state of a MyOrdersThreeTabContainer according to the event that is dispatched to it.
class MyOrdersThreeTabContainerBloc extends Bloc<MyOrdersThreeTabContainerEvent,
    MyOrdersThreeTabContainerState> {
  MyOrdersThreeTabContainerBloc(MyOrdersThreeTabContainerState initialState)
      : super(initialState) {
    on<MyOrdersThreeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyOrdersThreeTabContainerInitialEvent event,
    Emitter<MyOrdersThreeTabContainerState> emit,
  ) async {}
}
