// ignore_for_file: must_be_immutable

part of 'notification_two_bloc.dart';

/// Represents the state of NotificationTwo in the application.
class NotificationTwoState extends Equatable {
  NotificationTwoState({this.notificationTwoModelObj});

  NotificationTwoModel? notificationTwoModelObj;

  @override
  List<Object?> get props => [
        notificationTwoModelObj,
      ];
  NotificationTwoState copyWith(
      {NotificationTwoModel? notificationTwoModelObj}) {
    return NotificationTwoState(
      notificationTwoModelObj:
          notificationTwoModelObj ?? this.notificationTwoModelObj,
    );
  }
}
