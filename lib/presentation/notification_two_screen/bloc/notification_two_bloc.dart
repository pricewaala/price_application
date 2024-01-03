import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/notification_two_screen/models/notification_two_model.dart';
part 'notification_two_event.dart';
part 'notification_two_state.dart';

/// A bloc that manages the state of a NotificationTwo according to the event that is dispatched to it.
class NotificationTwoBloc
    extends Bloc<NotificationTwoEvent, NotificationTwoState> {
  NotificationTwoBloc(NotificationTwoState initialState) : super(initialState) {
    on<NotificationTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationTwoInitialEvent event,
    Emitter<NotificationTwoState> emit,
  ) async {}
}
