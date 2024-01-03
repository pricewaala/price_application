import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/check_out_three_two_screen/models/check_out_three_two_model.dart';
part 'check_out_three_two_event.dart';
part 'check_out_three_two_state.dart';

/// A bloc that manages the state of a CheckOutThreeTwo according to the event that is dispatched to it.
class CheckOutThreeTwoBloc
    extends Bloc<CheckOutThreeTwoEvent, CheckOutThreeTwoState> {
  CheckOutThreeTwoBloc(CheckOutThreeTwoState initialState)
      : super(initialState) {
    on<CheckOutThreeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckOutThreeTwoInitialEvent event,
    Emitter<CheckOutThreeTwoState> emit,
  ) async {}
}
