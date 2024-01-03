import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/scrollview_item_model.dart';
import 'package:price_s_application2/presentation/notification_screen/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

/// A bloc that manages the state of a Notification according to the event that is dispatched to it.
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj?.copyWith(
      scrollviewItemList: fillScrollviewItemList(),
    )));
  }

  List<ScrollviewItemModel> fillScrollviewItemList() {
    return [
      ScrollviewItemModel(
          dynamicText1: "Good morning! Get 20% Voucher",
          dynamicText2:
              "Summer sale up to 20% off. Limited voucher. Get now!! 😜"),
      ScrollviewItemModel(
          dynamicText1: "Special offer just for you",
          dynamicText2: "New Autumn Collection 30% off"),
      ScrollviewItemModel(
          dynamicText1: "Holiday sale 50%",
          dynamicText2: "Tap here to get 50% voucher.")
    ];
  }
}
