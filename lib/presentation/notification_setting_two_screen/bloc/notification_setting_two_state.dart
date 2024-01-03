// ignore_for_file: must_be_immutable

part of 'notification_setting_two_bloc.dart';

/// Represents the state of NotificationSettingTwo in the application.
class NotificationSettingTwoState extends Equatable {
  NotificationSettingTwoState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.notificationSettingTwoModelObj,
  });

  NotificationSettingTwoModel? notificationSettingTwoModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        notificationSettingTwoModelObj,
      ];
  NotificationSettingTwoState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    NotificationSettingTwoModel? notificationSettingTwoModelObj,
  }) {
    return NotificationSettingTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      notificationSettingTwoModelObj:
          notificationSettingTwoModelObj ?? this.notificationSettingTwoModelObj,
    );
  }
}
