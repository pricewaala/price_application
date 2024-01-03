import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/sign_up_two_screen/models/sign_up_two_model.dart';
part 'sign_up_two_event.dart';
part 'sign_up_two_state.dart';

/// A bloc that manages the state of a SignUpTwo according to the event that is dispatched to it.
class SignUpTwoBloc extends Bloc<SignUpTwoEvent, SignUpTwoState> {
  SignUpTwoBloc(SignUpTwoState initialState) : super(initialState) {
    on<SignUpTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpTwoInitialEvent event,
    Emitter<SignUpTwoState> emit,
  ) async {
    emit(state.copyWith(
      nameFieldController: TextEditingController(),
      emailFieldController: TextEditingController(),
      passwordFieldController: TextEditingController(),
      confirmPasswordFieldController: TextEditingController(),
    ));
  }
}
