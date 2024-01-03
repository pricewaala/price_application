// ignore_for_file: must_be_immutable

part of 'forgot_password_one_bloc.dart';

/// Represents the state of ForgotPasswordOne in the application.
class ForgotPasswordOneState extends Equatable {
  ForgotPasswordOneState({
    this.emailController,
    this.forgotPasswordOneModelObj,
  });

  TextEditingController? emailController;

  ForgotPasswordOneModel? forgotPasswordOneModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgotPasswordOneModelObj,
      ];
  ForgotPasswordOneState copyWith({
    TextEditingController? emailController,
    ForgotPasswordOneModel? forgotPasswordOneModelObj,
  }) {
    return ForgotPasswordOneState(
      emailController: emailController ?? this.emailController,
      forgotPasswordOneModelObj:
          forgotPasswordOneModelObj ?? this.forgotPasswordOneModelObj,
    );
  }
}
