import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:price_s_application2/presentation/payment_two_screen/models/payment_two_model.dart';
part 'payment_two_event.dart';
part 'payment_two_state.dart';

/// A bloc that manages the state of a PaymentTwo according to the event that is dispatched to it.
class PaymentTwoBloc extends Bloc<PaymentTwoEvent, PaymentTwoState> {
  PaymentTwoBloc(PaymentTwoState initialState) : super(initialState) {
    on<PaymentTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentTwoInitialEvent event,
    Emitter<PaymentTwoState> emit,
  ) async {
    emit(state.copyWith(
        paymentTwoModelObj: state.paymentTwoModelObj?.copyWith(
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
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
