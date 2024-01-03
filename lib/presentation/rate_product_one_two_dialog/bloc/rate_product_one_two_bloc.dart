import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_one_two_dialog/models/rate_product_one_two_model.dart';
part 'rate_product_one_two_event.dart';
part 'rate_product_one_two_state.dart';

/// A bloc that manages the state of a RateProductOneTwo according to the event that is dispatched to it.
class RateProductOneTwoBloc
    extends Bloc<RateProductOneTwoEvent, RateProductOneTwoState> {
  RateProductOneTwoBloc(RateProductOneTwoState initialState)
      : super(initialState) {
    on<RateProductOneTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductOneTwoInitialEvent event,
    Emitter<RateProductOneTwoState> emit,
  ) async {}
}
