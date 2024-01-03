import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_two_dialog/models/rate_product_two_model.dart';
part 'rate_product_two_event.dart';
part 'rate_product_two_state.dart';

/// A bloc that manages the state of a RateProductTwo according to the event that is dispatched to it.
class RateProductTwoBloc
    extends Bloc<RateProductTwoEvent, RateProductTwoState> {
  RateProductTwoBloc(RateProductTwoState initialState) : super(initialState) {
    on<RateProductTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductTwoInitialEvent event,
    Emitter<RateProductTwoState> emit,
  ) async {}
}
