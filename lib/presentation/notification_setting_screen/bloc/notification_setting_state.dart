// ignore_for_file: must_be_immutable

part of 'notification_setting_bloc.dart';

/// Represents the state of NotificationSetting in the application.
class NotificationSettingState extends Equatable {
  NotificationSettingState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.notificationSettingModelObj,
  });

  NotificationSettingModel? notificationSettingModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        notificationSettingModelObj,
      ];
  NotificationSettingState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    NotificationSettingModel? notificationSettingModelObj,
  }) {
    return NotificationSettingState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      notificationSettingModelObj:
          notificationSettingModelObj ?? this.notificationSettingModelObj,
    );
  }
}
