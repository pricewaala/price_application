import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_one_three_screen/models/rate_product_one_three_model.dart';
part 'rate_product_one_three_event.dart';
part 'rate_product_one_three_state.dart';

/// A bloc that manages the state of a RateProductOneThree according to the event that is dispatched to it.
class RateProductOneThreeBloc
    extends Bloc<RateProductOneThreeEvent, RateProductOneThreeState> {
  RateProductOneThreeBloc(RateProductOneThreeState initialState)
      : super(initialState) {
    on<RateProductOneThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductOneThreeInitialEvent event,
    Emitter<RateProductOneThreeState> emit,
  ) async {
    emit(state.copyWith(
      writeController: TextEditingController(),
    ));
  }
}
