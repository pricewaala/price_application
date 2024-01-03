import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/setting_screen/models/setting_model.dart';
part 'setting_event.dart';
part 'setting_state.dart';

/// A bloc that manages the state of a Setting according to the event that is dispatched to it.
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc(SettingState initialState) : super(initialState) {
    on<SettingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingInitialEvent event,
    Emitter<SettingState> emit,
  ) async {}
}
