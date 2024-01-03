import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/rate_product_screen/models/rate_product_model.dart';
part 'rate_product_event.dart';
part 'rate_product_state.dart';

/// A bloc that manages the state of a RateProduct according to the event that is dispatched to it.
class RateProductBloc extends Bloc<RateProductEvent, RateProductState> {
  RateProductBloc(RateProductState initialState) : super(initialState) {
    on<RateProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateProductInitialEvent event,
    Emitter<RateProductState> emit,
  ) async {
    emit(state.copyWith(
      writeAboutProductController: TextEditingController(),
    ));
  }
}
