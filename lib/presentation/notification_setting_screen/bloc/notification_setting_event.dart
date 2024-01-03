// ignore_for_file: must_be_immutable

part of 'notification_setting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationSetting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationSettingEvent extends Equatable {}

/// Event that is dispatched when the NotificationSetting widget is first created.
class NotificationSettingInitialEvent extends NotificationSettingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationSettingEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends NotificationSettingEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends NotificationSettingEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
