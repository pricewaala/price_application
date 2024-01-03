import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/log_in_two_screen/models/log_in_two_model.dart';
part 'log_in_two_event.dart';
part 'log_in_two_state.dart';

/// A bloc that manages the state of a LogInTwo according to the event that is dispatched to it.
class LogInTwoBloc extends Bloc<LogInTwoEvent, LogInTwoState> {
  LogInTwoBloc(LogInTwoState initialState) : super(initialState) {
    on<LogInTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogInTwoInitialEvent event,
    Emitter<LogInTwoState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
