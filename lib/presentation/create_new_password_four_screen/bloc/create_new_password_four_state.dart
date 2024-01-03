// ignore_for_file: must_be_immutable

part of 'create_new_password_four_bloc.dart';

/// Represents the state of CreateNewPasswordFour in the application.
class CreateNewPasswordFourState extends Equatable {
  CreateNewPasswordFourState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createNewPasswordFourModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordFourModel? createNewPasswordFourModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        createNewPasswordFourModelObj,
      ];
  CreateNewPasswordFourState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateNewPasswordFourModel? createNewPasswordFourModelObj,
  }) {
    return CreateNewPasswordFourState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createNewPasswordFourModelObj:
          createNewPasswordFourModelObj ?? this.createNewPasswordFourModelObj,
    );
  }
}
