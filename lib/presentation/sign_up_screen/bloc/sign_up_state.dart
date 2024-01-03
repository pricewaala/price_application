// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.nameFieldController,
    this.emailFieldController,
    this.passwordFieldController,
    this.confirmPasswordFieldController,
    this.signUpModelObj,
  });

  TextEditingController? nameFieldController;

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? confirmPasswordFieldController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        nameFieldController,
        emailFieldController,
        passwordFieldController,
        confirmPasswordFieldController,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? nameFieldController,
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? confirmPasswordFieldController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameFieldController: nameFieldController ?? this.nameFieldController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
