// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

/// Represents the state of CreateNewPassword in the application.
class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.createNewPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordModel? createNewPasswordModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
