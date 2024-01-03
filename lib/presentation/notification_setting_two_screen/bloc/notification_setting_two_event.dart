// ignore_for_file: must_be_immutable

part of 'notification_setting_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationSettingTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationSettingTwoEvent extends Equatable {}

/// Event that is dispatched when the NotificationSettingTwo widget is first created.
class NotificationSettingTwoInitialEvent extends NotificationSettingTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationSettingTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends NotificationSettingTwoEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends NotificationSettingTwoEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
