import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_one_one_screen/models/rate_product_one_one_model.dart';
part 'rate_product_one_one_event.dart';
part 'rate_product_one_one_state.dart';

/// A bloc that manages the state of a RateProductOneOne according to the event that is dispatched to it.
class RateProductOneOneBloc
    extends Bloc<RateProductOneOneEvent, RateProductOneOneState> {
  RateProductOneOneBloc(RateProductOneOneState initialState)
      : super(initialState) {
    on<RateProductOneOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductOneOneInitialEvent event,
    Emitter<RateProductOneOneState> emit,
  ) async {
    emit(state.copyWith(
      writeController: TextEditingController(),
    ));
  }
}
