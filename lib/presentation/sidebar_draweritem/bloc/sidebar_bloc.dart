import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/sidebar_draweritem/models/sidebar_model.dart';
part 'sidebar_event.dart';
part 'sidebar_state.dart';

/// A bloc that manages the state of a Sidebar according to the event that is dispatched to it.
class SidebarBloc extends Bloc<SidebarEvent, SidebarState> {
  SidebarBloc(SidebarState initialState) : super(initialState) {
    on<SidebarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SidebarInitialEvent event,
    Emitter<SidebarState> emit,
  ) async {}
}
