// ignore_for_file: must_be_immutable

part of 'sign_up_one_bloc.dart';

/// Represents the state of SignUpOne in the application.
class SignUpOneState extends Equatable {
  SignUpOneState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.signUpOneModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignUpOneModel? signUpOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        confirmpasswordController,
        signUpOneModelObj,
      ];
  SignUpOneState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SignUpOneModel? signUpOneModelObj,
  }) {
    return SignUpOneState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      signUpOneModelObj: signUpOneModelObj ?? this.signUpOneModelObj,
    );
  }
}
