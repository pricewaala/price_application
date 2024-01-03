// ignore_for_file: must_be_immutable

part of 'create_new_password_two1_bloc.dart';

/// Represents the state of CreateNewPasswordTwo1 in the application.
class CreateNewPasswordTwo1State extends Equatable {
  CreateNewPasswordTwo1State({
    this.newpasswordController,
    this.confirmpasswordController,
    this.createNewPasswordTwo1ModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  CreateNewPasswordTwo1Model? createNewPasswordTwo1ModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        createNewPasswordTwo1ModelObj,
      ];
  CreateNewPasswordTwo1State copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    CreateNewPasswordTwo1Model? createNewPasswordTwo1ModelObj,
  }) {
    return CreateNewPasswordTwo1State(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      createNewPasswordTwo1ModelObj:
          createNewPasswordTwo1ModelObj ?? this.createNewPasswordTwo1ModelObj,
    );
  }
}
