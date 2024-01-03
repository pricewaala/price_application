// ignore_for_file: must_be_immutable

part of 'profile_setting_two_bloc.dart';

/// Represents the state of ProfileSettingTwo in the application.
class ProfileSettingTwoState extends Equatable {
  ProfileSettingTwoState({
    this.firstNameController,
    this.gendervalueController,
    this.profileSettingTwoModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? gendervalueController;

  ProfileSettingTwoModel? profileSettingTwoModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        gendervalueController,
        profileSettingTwoModelObj,
      ];
  ProfileSettingTwoState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? gendervalueController,
    ProfileSettingTwoModel? profileSettingTwoModelObj,
  }) {
    return ProfileSettingTwoState(
      firstNameController: firstNameController ?? this.firstNameController,
      gendervalueController:
          gendervalueController ?? this.gendervalueController,
      profileSettingTwoModelObj:
          profileSettingTwoModelObj ?? this.profileSettingTwoModelObj,
    );
  }
}
