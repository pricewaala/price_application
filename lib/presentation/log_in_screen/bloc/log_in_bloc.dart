import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/log_in_screen/models/log_in_model.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

/// A bloc that manages the state of a LogIn according to the event that is dispatched to it.
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initialState) : super(initialState) {
    on<LogInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogInInitialEvent event,
    Emitter<LogInState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
