import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/log_in_one_screen/models/log_in_one_model.dart';
part 'log_in_one_event.dart';
part 'log_in_one_state.dart';

/// A bloc that manages the state of a LogInOne according to the event that is dispatched to it.
class LogInOneBloc extends Bloc<LogInOneEvent, LogInOneState> {
  LogInOneBloc(LogInOneState initialState) : super(initialState) {
    on<LogInOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogInOneInitialEvent event,
    Emitter<LogInOneState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
