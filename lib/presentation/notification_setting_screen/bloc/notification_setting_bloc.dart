import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/notification_setting_screen/models/notification_setting_model.dart';
part 'notification_setting_event.dart';
part 'notification_setting_state.dart';

/// A bloc that manages the state of a NotificationSetting according to the event that is dispatched to it.
class NotificationSettingBloc
    extends Bloc<NotificationSettingEvent, NotificationSettingState> {
  NotificationSettingBloc(NotificationSettingState initialState)
      : super(initialState) {
    on<NotificationSettingInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<NotificationSettingState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<NotificationSettingState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<NotificationSettingState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _onInitialize(
    NotificationSettingInitialEvent event,
    Emitter<NotificationSettingState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
    ));
  }
}
