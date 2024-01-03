import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/verification_code_two_screen/models/verification_code_two_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_code_two_event.dart';
part 'verification_code_two_state.dart';

/// A bloc that manages the state of a VerificationCodeTwo according to the event that is dispatched to it.
class VerificationCodeTwoBloc
    extends Bloc<VerificationCodeTwoEvent, VerificationCodeTwoState>
    with CodeAutoFill {
  VerificationCodeTwoBloc(VerificationCodeTwoState initialState)
      : super(initialState) {
    on<VerificationCodeTwoInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationCodeTwoState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    VerificationCodeTwoInitialEvent event,
    Emitter<VerificationCodeTwoState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
