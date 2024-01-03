// ignore_for_file: must_be_immutable

part of 'setting_two_bloc.dart';

/// Represents the state of SettingTwo in the application.
class SettingTwoState extends Equatable {
  SettingTwoState({this.settingTwoModelObj});

  SettingTwoModel? settingTwoModelObj;

  @override
  List<Object?> get props => [
        settingTwoModelObj,
      ];
  SettingTwoState copyWith({SettingTwoModel? settingTwoModelObj}) {
    return SettingTwoState(
      settingTwoModelObj: settingTwoModelObj ?? this.settingTwoModelObj,
    );
  }
}
