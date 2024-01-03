import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:price_s_application2/presentation/payment_one_screen/models/payment_one_model.dart';
part 'payment_one_event.dart';
part 'payment_one_state.dart';

/// A bloc that manages the state of a PaymentOne according to the event that is dispatched to it.
class PaymentOneBloc extends Bloc<PaymentOneEvent, PaymentOneState> {
  PaymentOneBloc(PaymentOneState initialState) : super(initialState) {
    on<PaymentOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentOneInitialEvent event,
    Emitter<PaymentOneState> emit,
  ) async {
    emit(state.copyWith(
        paymentOneModelObj: state.paymentOneModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          image: ImageConstant.imgMap,
          settingsImage: ImageConstant.imgSettingsWhiteA700,
          text1: "4364",
          text2: "1345 ",
          text3: "8932",
          text4: "8378",
          price: "CARDHOLDER NAME",
          cardholderName: "Sunie Pham",
          text6: "VALID THRU",
          validThru: "05/24")
    ];
  }
}
