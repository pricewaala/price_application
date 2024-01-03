// ignore_for_file: must_be_immutable

part of 'create_new_password_three_bloc.dart';

/// Represents the state of CreateNewPasswordThree in the application.
class CreateNewPasswordThreeState extends Equatable {
  CreateNewPasswordThreeState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createNewPasswordThreeModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordThreeModel? createNewPasswordThreeModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        createNewPasswordThreeModelObj,
      ];
  CreateNewPasswordThreeState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateNewPasswordThreeModel? createNewPasswordThreeModelObj,
  }) {
    return CreateNewPasswordThreeState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createNewPasswordThreeModelObj:
          createNewPasswordThreeModelObj ?? this.createNewPasswordThreeModelObj,
    );
  }
}
