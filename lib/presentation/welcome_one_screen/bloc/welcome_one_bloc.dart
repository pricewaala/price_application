import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/welcome_one_screen/models/welcome_one_model.dart';
part 'welcome_one_event.dart';
part 'welcome_one_state.dart';

/// A bloc that manages the state of a WelcomeOne according to the event that is dispatched to it.
class WelcomeOneBloc extends Bloc<WelcomeOneEvent, WelcomeOneState> {
  WelcomeOneBloc(WelcomeOneState initialState) : super(initialState) {
    on<WelcomeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeOneInitialEvent event,
    Emitter<WelcomeOneState> emit,
  ) async {}
}
