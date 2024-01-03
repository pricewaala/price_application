import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/welcome_two_screen/models/welcome_two_model.dart';
part 'welcome_two_event.dart';
part 'welcome_two_state.dart';

/// A bloc that manages the state of a WelcomeTwo according to the event that is dispatched to it.
class WelcomeTwoBloc extends Bloc<WelcomeTwoEvent, WelcomeTwoState> {
  WelcomeTwoBloc(WelcomeTwoState initialState) : super(initialState) {
    on<WelcomeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeTwoInitialEvent event,
    Emitter<WelcomeTwoState> emit,
  ) async {}
}
