// ignore_for_file: must_be_immutable

part of 'setting_three_bloc.dart';

/// Represents the state of SettingThree in the application.
class SettingThreeState extends Equatable {
  SettingThreeState({this.settingThreeModelObj});

  SettingThreeModel? settingThreeModelObj;

  @override
  List<Object?> get props => [
        settingThreeModelObj,
      ];
  SettingThreeState copyWith({SettingThreeModel? settingThreeModelObj}) {
    return SettingThreeState(
      settingThreeModelObj: settingThreeModelObj ?? this.settingThreeModelObj,
    );
  }
}
