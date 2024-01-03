import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_two_one_dialog/models/rate_product_two_one_model.dart';
part 'rate_product_two_one_event.dart';
part 'rate_product_two_one_state.dart';

/// A bloc that manages the state of a RateProductTwoOne according to the event that is dispatched to it.
class RateProductTwoOneBloc
    extends Bloc<RateProductTwoOneEvent, RateProductTwoOneState> {
  RateProductTwoOneBloc(RateProductTwoOneState initialState)
      : super(initialState) {
    on<RateProductTwoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductTwoOneInitialEvent event,
    Emitter<RateProductTwoOneState> emit,
  ) async {}
}
