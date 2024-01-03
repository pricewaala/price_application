// ignore_for_file: must_be_immutable

part of 'verification_code_two_bloc.dart';

/// Represents the state of VerificationCodeTwo in the application.
class VerificationCodeTwoState extends Equatable {
  VerificationCodeTwoState({
    this.otpController,
    this.verificationCodeTwoModelObj,
  });

  TextEditingController? otpController;

  VerificationCodeTwoModel? verificationCodeTwoModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationCodeTwoModelObj,
      ];
  VerificationCodeTwoState copyWith({
    TextEditingController? otpController,
    VerificationCodeTwoModel? verificationCodeTwoModelObj,
  }) {
    return VerificationCodeTwoState(
      otpController: otpController ?? this.otpController,
      verificationCodeTwoModelObj:
          verificationCodeTwoModelObj ?? this.verificationCodeTwoModelObj,
    );
  }
}
