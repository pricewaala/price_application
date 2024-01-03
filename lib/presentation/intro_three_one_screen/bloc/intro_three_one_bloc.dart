import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/intro_three_one_screen/models/intro_three_one_model.dart';
part 'intro_three_one_event.dart';
part 'intro_three_one_state.dart';

/// A bloc that manages the state of a IntroThreeOne according to the event that is dispatched to it.
class IntroThreeOneBloc extends Bloc<IntroThreeOneEvent, IntroThreeOneState> {
  IntroThreeOneBloc(IntroThreeOneState initialState) : super(initialState) {
    on<IntroThreeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IntroThreeOneInitialEvent event,
    Emitter<IntroThreeOneState> emit,
  ) async {}
}
