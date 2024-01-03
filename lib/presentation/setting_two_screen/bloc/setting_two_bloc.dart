import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/setting_two_screen/models/setting_two_model.dart';
part 'setting_two_event.dart';
part 'setting_two_state.dart';

/// A bloc that manages the state of a SettingTwo according to the event that is dispatched to it.
class SettingTwoBloc extends Bloc<SettingTwoEvent, SettingTwoState> {
  SettingTwoBloc(SettingTwoState initialState) : super(initialState) {
    on<SettingTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingTwoInitialEvent event,
    Emitter<SettingTwoState> emit,
  ) async {}
}
