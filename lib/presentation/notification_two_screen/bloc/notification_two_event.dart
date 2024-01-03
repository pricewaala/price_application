// ignore_for_file: must_be_immutable

part of 'notification_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationTwoEvent extends Equatable {}

/// Event that is dispatched when the NotificationTwo widget is first created.
class NotificationTwoInitialEvent extends NotificationTwoEvent {
  @override
  List<Object?> get props => [];
}
