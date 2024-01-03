// ignore_for_file: must_be_immutable

part of 'notification_setting_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationSettingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationSettingOneEvent extends Equatable {}

/// Event that is dispatched when the NotificationSettingOne widget is first created.
class NotificationSettingOneInitialEvent extends NotificationSettingOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationSettingOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends NotificationSettingOneEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends NotificationSettingOneEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
