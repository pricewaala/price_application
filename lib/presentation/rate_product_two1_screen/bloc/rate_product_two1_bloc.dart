import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_two1_screen/models/rate_product_two1_model.dart';
part 'rate_product_two1_event.dart';
part 'rate_product_two1_state.dart';

/// A bloc that manages the state of a RateProductTwo1 according to the event that is dispatched to it.
class RateProductTwo1Bloc
    extends Bloc<RateProductTwo1Event, RateProductTwo1State> {
  RateProductTwo1Bloc(RateProductTwo1State initialState) : super(initialState) {
    on<RateProductTwo1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductTwo1InitialEvent event,
    Emitter<RateProductTwo1State> emit,
  ) async {
    emit(state.copyWith(
      writeAboutProductController: TextEditingController(),
    ));
  }
}
