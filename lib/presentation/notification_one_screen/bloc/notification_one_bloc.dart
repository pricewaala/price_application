import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/scrollview1_item_model.dart';
import 'package:price_s_application2/presentation/notification_one_screen/models/notification_one_model.dart';
part 'notification_one_event.dart';
part 'notification_one_state.dart';

/// A bloc that manages the state of a NotificationOne according to the event that is dispatched to it.
class NotificationOneBloc
    extends Bloc<NotificationOneEvent, NotificationOneState> {
  NotificationOneBloc(NotificationOneState initialState) : super(initialState) {
    on<NotificationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationOneInitialEvent event,
    Emitter<NotificationOneState> emit,
  ) async {
    emit(state.copyWith(
        notificationOneModelObj: state.notificationOneModelObj?.copyWith(
      scrollview1ItemList: fillScrollview1ItemList(),
    )));
  }

  List<Scrollview1ItemModel> fillScrollview1ItemList() {
    return [
      Scrollview1ItemModel(
          dynamicText1: "Good morning! Get 20% Voucher",
          dynamicText2:
              "Summer sale up to 20% off. Limited voucher. Get now!! 😜"),
      Scrollview1ItemModel(
          dynamicText1: "Special offer just for you",
          dynamicText2: "New Autumn Collection 30% off"),
      Scrollview1ItemModel(
          dynamicText1: "Holiday sale 50%",
          dynamicText2: "Tap here to get 50% voucher.")
    ];
  }
}
