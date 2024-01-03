import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/setting_one_draweritem/models/setting_one_model.dart';
part 'setting_one_event.dart';
part 'setting_one_state.dart';

/// A bloc that manages the state of a SettingOne according to the event that is dispatched to it.
class SettingOneBloc extends Bloc<SettingOneEvent, SettingOneState> {
  SettingOneBloc(SettingOneState initialState) : super(initialState) {
    on<SettingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingOneInitialEvent event,
    Emitter<SettingOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
