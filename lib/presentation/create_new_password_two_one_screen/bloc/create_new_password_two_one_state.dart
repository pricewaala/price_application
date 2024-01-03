// ignore_for_file: must_be_immutable

part of 'create_new_password_two_one_bloc.dart';

/// Represents the state of CreateNewPasswordTwoOne in the application.
class CreateNewPasswordTwoOneState extends Equatable {
  CreateNewPasswordTwoOneState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createNewPasswordTwoOneModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordTwoOneModel? createNewPasswordTwoOneModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        createNewPasswordTwoOneModelObj,
      ];
  CreateNewPasswordTwoOneState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateNewPasswordTwoOneModel? createNewPasswordTwoOneModelObj,
  }) {
    return CreateNewPasswordTwoOneState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createNewPasswordTwoOneModelObj: createNewPasswordTwoOneModelObj ??
          this.createNewPasswordTwoOneModelObj,
    );
  }
}
