import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_one_screen/models/rate_product_one_model.dart';
part 'rate_product_one_event.dart';
part 'rate_product_one_state.dart';

/// A bloc that manages the state of a RateProductOne according to the event that is dispatched to it.
class RateProductOneBloc
    extends Bloc<RateProductOneEvent, RateProductOneState> {
  RateProductOneBloc(RateProductOneState initialState) : super(initialState) {
    on<RateProductOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductOneInitialEvent event,
    Emitter<RateProductOneState> emit,
  ) async {
    emit(state.copyWith(
      writeAnythingController: TextEditingController(),
    ));
  }
}
