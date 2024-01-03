// ignore_for_file: must_be_immutable

part of 'notification_setting_one_bloc.dart';

/// Represents the state of NotificationSettingOne in the application.
class NotificationSettingOneState extends Equatable {
  NotificationSettingOneState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.notificationSettingOneModelObj,
  });

  NotificationSettingOneModel? notificationSettingOneModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        notificationSettingOneModelObj,
      ];
  NotificationSettingOneState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    NotificationSettingOneModel? notificationSettingOneModelObj,
  }) {
    return NotificationSettingOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      notificationSettingOneModelObj:
          notificationSettingOneModelObj ?? this.notificationSettingOneModelObj,
    );
  }
}
