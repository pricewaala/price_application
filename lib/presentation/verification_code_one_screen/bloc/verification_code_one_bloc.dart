import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/verification_code_one_screen/models/verification_code_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_code_one_event.dart';
part 'verification_code_one_state.dart';

/// A bloc that manages the state of a VerificationCodeOne according to the event that is dispatched to it.
class VerificationCodeOneBloc
    extends Bloc<VerificationCodeOneEvent, VerificationCodeOneState>
    with CodeAutoFill {
  VerificationCodeOneBloc(VerificationCodeOneState initialState)
      : super(initialState) {
    on<VerificationCodeOneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationCodeOneState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    VerificationCodeOneInitialEvent event,
    Emitter<VerificationCodeOneState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
