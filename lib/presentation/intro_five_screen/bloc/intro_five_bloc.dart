import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/intro_five_screen/models/intro_five_model.dart';
part 'intro_five_event.dart';
part 'intro_five_state.dart';

/// A bloc that manages the state of a IntroFive according to the event that is dispatched to it.
class IntroFiveBloc extends Bloc<IntroFiveEvent, IntroFiveState> {
  IntroFiveBloc(IntroFiveState initialState) : super(initialState) {
    on<IntroFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IntroFiveInitialEvent event,
    Emitter<IntroFiveState> emit,
  ) async {}
}
