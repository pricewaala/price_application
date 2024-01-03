import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/sidebar_setting_one_draweritem/models/sidebar_setting_one_model.dart';
part 'sidebar_setting_one_event.dart';
part 'sidebar_setting_one_state.dart';

/// A bloc that manages the state of a SidebarSettingOne according to the event that is dispatched to it.
class SidebarSettingOneBloc
    extends Bloc<SidebarSettingOneEvent, SidebarSettingOneState> {
  SidebarSettingOneBloc(SidebarSettingOneState initialState)
      : super(initialState) {
    on<SidebarSettingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SidebarSettingOneInitialEvent event,
    Emitter<SidebarSettingOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
