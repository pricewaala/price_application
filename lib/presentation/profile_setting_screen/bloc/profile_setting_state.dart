// ignore_for_file: must_be_immutable

part of 'profile_setting_bloc.dart';

/// Represents the state of ProfileSetting in the application.
class ProfileSettingState extends Equatable {
  ProfileSettingState({
    this.firstNameController,
    this.gendervalueController,
    this.profileSettingModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? gendervalueController;

  ProfileSettingModel? profileSettingModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        gendervalueController,
        profileSettingModelObj,
      ];
  ProfileSettingState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? gendervalueController,
    ProfileSettingModel? profileSettingModelObj,
  }) {
    return ProfileSettingState(
      firstNameController: firstNameController ?? this.firstNameController,
      gendervalueController:
          gendervalueController ?? this.gendervalueController,
      profileSettingModelObj:
          profileSettingModelObj ?? this.profileSettingModelObj,
    );
  }
}
