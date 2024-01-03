import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/password_changed_bottomsheet/models/password_changed_model.dart';
part 'password_changed_event.dart';
part 'password_changed_state.dart';

/// A bloc that manages the state of a PasswordChanged according to the event that is dispatched to it.
class PasswordChangedBloc
    extends Bloc<PasswordChangedEvent, PasswordChangedState> {
  PasswordChangedBloc(PasswordChangedState initialState) : super(initialState) {
    on<PasswordChangedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PasswordChangedInitialEvent event,
    Emitter<PasswordChangedState> emit,
  ) async {}
}
