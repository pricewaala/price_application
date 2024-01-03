import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/sidebar_setting_draweritem/models/sidebar_setting_model.dart';
part 'sidebar_setting_event.dart';
part 'sidebar_setting_state.dart';

/// A bloc that manages the state of a SidebarSetting according to the event that is dispatched to it.
class SidebarSettingBloc
    extends Bloc<SidebarSettingEvent, SidebarSettingState> {
  SidebarSettingBloc(SidebarSettingState initialState) : super(initialState) {
    on<SidebarSettingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SidebarSettingInitialEvent event,
    Emitter<SidebarSettingState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
