import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/sidebar_home_draweritem/models/sidebar_home_model.dart';
part 'sidebar_home_event.dart';
part 'sidebar_home_state.dart';

/// A bloc that manages the state of a SidebarHome according to the event that is dispatched to it.
class SidebarHomeBloc extends Bloc<SidebarHomeEvent, SidebarHomeState> {
  SidebarHomeBloc(SidebarHomeState initialState) : super(initialState) {
    on<SidebarHomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SidebarHomeInitialEvent event,
    Emitter<SidebarHomeState> emit,
  ) async {
    emit(state.copyWith(
      lightController: TextEditingController(),
    ));
  }
}
