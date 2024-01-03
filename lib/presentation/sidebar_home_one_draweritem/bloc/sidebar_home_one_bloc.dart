import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/sidebar_home_one_draweritem/models/sidebar_home_one_model.dart';
part 'sidebar_home_one_event.dart';
part 'sidebar_home_one_state.dart';

/// A bloc that manages the state of a SidebarHomeOne according to the event that is dispatched to it.
class SidebarHomeOneBloc
    extends Bloc<SidebarHomeOneEvent, SidebarHomeOneState> {
  SidebarHomeOneBloc(SidebarHomeOneState initialState) : super(initialState) {
    on<SidebarHomeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SidebarHomeOneInitialEvent event,
    Emitter<SidebarHomeOneState> emit,
  ) async {
    emit(state.copyWith(
      lightController: TextEditingController(),
    ));
  }
}
