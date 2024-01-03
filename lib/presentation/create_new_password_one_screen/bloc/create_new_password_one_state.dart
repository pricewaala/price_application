// ignore_for_file: must_be_immutable

part of 'create_new_password_one_bloc.dart';

/// Represents the state of CreateNewPasswordOne in the application.
class CreateNewPasswordOneState extends Equatable {
  CreateNewPasswordOneState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.createNewPasswordOneModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordOneModel? createNewPasswordOneModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        createNewPasswordOneModelObj,
      ];
  CreateNewPasswordOneState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    CreateNewPasswordOneModel? createNewPasswordOneModelObj,
  }) {
    return CreateNewPasswordOneState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      createNewPasswordOneModelObj:
          createNewPasswordOneModelObj ?? this.createNewPasswordOneModelObj,
    );
  }
}
