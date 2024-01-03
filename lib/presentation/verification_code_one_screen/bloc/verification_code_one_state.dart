// ignore_for_file: must_be_immutable

part of 'verification_code_one_bloc.dart';

/// Represents the state of VerificationCodeOne in the application.
class VerificationCodeOneState extends Equatable {
  VerificationCodeOneState({
    this.otpController,
    this.verificationCodeOneModelObj,
  });

  TextEditingController? otpController;

  VerificationCodeOneModel? verificationCodeOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationCodeOneModelObj,
      ];
  VerificationCodeOneState copyWith({
    TextEditingController? otpController,
    VerificationCodeOneModel? verificationCodeOneModelObj,
  }) {
    return VerificationCodeOneState(
      otpController: otpController ?? this.otpController,
      verificationCodeOneModelObj:
          verificationCodeOneModelObj ?? this.verificationCodeOneModelObj,
    );
  }
}
