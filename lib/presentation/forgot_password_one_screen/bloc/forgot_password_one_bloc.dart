import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/forgot_password_one_screen/models/forgot_password_one_model.dart';
part 'forgot_password_one_event.dart';
part 'forgot_password_one_state.dart';

/// A bloc that manages the state of a ForgotPasswordOne according to the event that is dispatched to it.
class ForgotPasswordOneBloc
    extends Bloc<ForgotPasswordOneEvent, ForgotPasswordOneState> {
  ForgotPasswordOneBloc(ForgotPasswordOneState initialState)
      : super(initialState) {
    on<ForgotPasswordOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgotPasswordOneInitialEvent event,
    Emitter<ForgotPasswordOneState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
