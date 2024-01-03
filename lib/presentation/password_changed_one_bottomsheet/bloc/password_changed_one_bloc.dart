import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/password_changed_one_bottomsheet/models/password_changed_one_model.dart';
part 'password_changed_one_event.dart';
part 'password_changed_one_state.dart';

/// A bloc that manages the state of a PasswordChangedOne according to the event that is dispatched to it.
class PasswordChangedOneBloc
    extends Bloc<PasswordChangedOneEvent, PasswordChangedOneState> {
  PasswordChangedOneBloc(PasswordChangedOneState initialState)
      : super(initialState) {
    on<PasswordChangedOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PasswordChangedOneInitialEvent event,
    Emitter<PasswordChangedOneState> emit,
  ) async {}
}
