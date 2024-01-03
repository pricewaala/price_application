import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/setting_three_screen/models/setting_three_model.dart';
part 'setting_three_event.dart';
part 'setting_three_state.dart';

/// A bloc that manages the state of a SettingThree according to the event that is dispatched to it.
class SettingThreeBloc extends Bloc<SettingThreeEvent, SettingThreeState> {
  SettingThreeBloc(SettingThreeState initialState) : super(initialState) {
    on<SettingThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingThreeInitialEvent event,
    Emitter<SettingThreeState> emit,
  ) async {}
}
