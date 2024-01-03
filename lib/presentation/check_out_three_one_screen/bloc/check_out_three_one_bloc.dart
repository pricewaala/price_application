import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/check_out_three_one_screen/models/check_out_three_one_model.dart';
part 'check_out_three_one_event.dart';
part 'check_out_three_one_state.dart';

/// A bloc that manages the state of a CheckOutThreeOne according to the event that is dispatched to it.
class CheckOutThreeOneBloc
    extends Bloc<CheckOutThreeOneEvent, CheckOutThreeOneState> {
  CheckOutThreeOneBloc(CheckOutThreeOneState initialState)
      : super(initialState) {
    on<CheckOutThreeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckOutThreeOneInitialEvent event,
    Emitter<CheckOutThreeOneState> emit,
  ) async {}
}
