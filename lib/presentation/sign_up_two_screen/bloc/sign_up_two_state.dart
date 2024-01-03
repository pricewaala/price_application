// ignore_for_file: must_be_immutable

part of 'sign_up_two_bloc.dart';

/// Represents the state of SignUpTwo in the application.
class SignUpTwoState extends Equatable {
  SignUpTwoState({
    this.nameFieldController,
    this.emailFieldController,
    this.passwordFieldController,
    this.confirmPasswordFieldController,
    this.signUpTwoModelObj,
  });

  TextEditingController? nameFieldController;

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? confirmPasswordFieldController;

  SignUpTwoModel? signUpTwoModelObj;

  @override
  List<Object?> get props => [
        nameFieldController,
        emailFieldController,
        passwordFieldController,
        confirmPasswordFieldController,
        signUpTwoModelObj,
      ];
  SignUpTwoState copyWith({
    TextEditingController? nameFieldController,
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? confirmPasswordFieldController,
    SignUpTwoModel? signUpTwoModelObj,
  }) {
    return SignUpTwoState(
      nameFieldController: nameFieldController ?? this.nameFieldController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      signUpTwoModelObj: signUpTwoModelObj ?? this.signUpTwoModelObj,
    );
  }
}
