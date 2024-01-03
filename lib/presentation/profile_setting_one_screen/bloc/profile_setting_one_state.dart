// ignore_for_file: must_be_immutable

part of 'profile_setting_one_bloc.dart';

/// Represents the state of ProfileSettingOne in the application.
class ProfileSettingOneState extends Equatable {
  ProfileSettingOneState({
    this.firstNameEditTextController,
    this.lastNameEditTextController,
    this.emailEditTextController,
    this.phoneEditTextController,
    this.profileSettingOneModelObj,
  });

  TextEditingController? firstNameEditTextController;

  TextEditingController? lastNameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? phoneEditTextController;

  ProfileSettingOneModel? profileSettingOneModelObj;

  @override
  List<Object?> get props => [
        firstNameEditTextController,
        lastNameEditTextController,
        emailEditTextController,
        phoneEditTextController,
        profileSettingOneModelObj,
      ];
  ProfileSettingOneState copyWith({
    TextEditingController? firstNameEditTextController,
    TextEditingController? lastNameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? phoneEditTextController,
    ProfileSettingOneModel? profileSettingOneModelObj,
  }) {
    return ProfileSettingOneState(
      firstNameEditTextController:
          firstNameEditTextController ?? this.firstNameEditTextController,
      lastNameEditTextController:
          lastNameEditTextController ?? this.lastNameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      phoneEditTextController:
          phoneEditTextController ?? this.phoneEditTextController,
      profileSettingOneModelObj:
          profileSettingOneModelObj ?? this.profileSettingOneModelObj,
    );
  }
}
