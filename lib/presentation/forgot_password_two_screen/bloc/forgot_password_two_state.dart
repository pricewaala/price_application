// ignore_for_file: must_be_immutable

part of 'forgot_password_two_bloc.dart';

/// Represents the state of ForgotPasswordTwo in the application.
class ForgotPasswordTwoState extends Equatable {
  ForgotPasswordTwoState({
    this.emailController,
    this.forgotPasswordTwoModelObj,
  });

  TextEditingController? emailController;

  ForgotPasswordTwoModel? forgotPasswordTwoModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgotPasswordTwoModelObj,
      ];
  ForgotPasswordTwoState copyWith({
    TextEditingController? emailController,
    ForgotPasswordTwoModel? forgotPasswordTwoModelObj,
  }) {
    return ForgotPasswordTwoState(
      emailController: emailController ?? this.emailController,
      forgotPasswordTwoModelObj:
          forgotPasswordTwoModelObj ?? this.forgotPasswordTwoModelObj,
    );
  }
}
