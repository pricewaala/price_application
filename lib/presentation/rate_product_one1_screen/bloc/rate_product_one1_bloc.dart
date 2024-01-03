import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_one1_screen/models/rate_product_one1_model.dart';
part 'rate_product_one1_event.dart';
part 'rate_product_one1_state.dart';

/// A bloc that manages the state of a RateProductOne1 according to the event that is dispatched to it.
class RateProductOne1Bloc
    extends Bloc<RateProductOne1Event, RateProductOne1State> {
  RateProductOne1Bloc(RateProductOne1State initialState) : super(initialState) {
    on<RateProductOne1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductOne1InitialEvent event,
    Emitter<RateProductOne1State> emit,
  ) async {
    emit(state.copyWith(
      writeAboutProductController: TextEditingController(),
    ));
  }
}
