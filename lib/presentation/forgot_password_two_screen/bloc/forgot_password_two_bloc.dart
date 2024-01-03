import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/forgot_password_two_screen/models/forgot_password_two_model.dart';
part 'forgot_password_two_event.dart';
part 'forgot_password_two_state.dart';

/// A bloc that manages the state of a ForgotPasswordTwo according to the event that is dispatched to it.
class ForgotPasswordTwoBloc
    extends Bloc<ForgotPasswordTwoEvent, ForgotPasswordTwoState> {
  ForgotPasswordTwoBloc(ForgotPasswordTwoState initialState)
      : super(initialState) {
    on<ForgotPasswordTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgotPasswordTwoInitialEvent event,
    Emitter<ForgotPasswordTwoState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
