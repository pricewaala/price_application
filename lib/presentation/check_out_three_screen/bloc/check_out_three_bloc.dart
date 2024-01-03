import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/check_out_three_screen/models/check_out_three_model.dart';
part 'check_out_three_event.dart';
part 'check_out_three_state.dart';

/// A bloc that manages the state of a CheckOutThree according to the event that is dispatched to it.
class CheckOutThreeBloc extends Bloc<CheckOutThreeEvent, CheckOutThreeState> {
  CheckOutThreeBloc(CheckOutThreeState initialState) : super(initialState) {
    on<CheckOutThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckOutThreeInitialEvent event,
    Emitter<CheckOutThreeState> emit,
  ) async {}
}
