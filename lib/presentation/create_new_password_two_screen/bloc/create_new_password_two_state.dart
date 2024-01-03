// ignore_for_file: must_be_immutable

part of 'create_new_password_two_bloc.dart';

/// Represents the state of CreateNewPasswordTwo in the application.
class CreateNewPasswordTwoState extends Equatable {
  CreateNewPasswordTwoState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createNewPasswordTwoModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordTwoModel? createNewPasswordTwoModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        createNewPasswordTwoModelObj,
      ];
  CreateNewPasswordTwoState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateNewPasswordTwoModel? createNewPasswordTwoModelObj,
  }) {
    return CreateNewPasswordTwoState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createNewPasswordTwoModelObj:
          createNewPasswordTwoModelObj ?? this.createNewPasswordTwoModelObj,
    );
  }
}
