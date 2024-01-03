import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:price_s_application2/presentation/payment_screen/models/payment_model.dart';
part 'payment_event.dart';
part 'payment_state.dart';

/// A bloc that manages the state of a Payment according to the event that is dispatched to it.
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc(PaymentState initialState) : super(initialState) {
    on<PaymentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentInitialEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(state.copyWith(
        paymentModelObj: state.paymentModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          image: ImageConstant.imgMap,
          settingsImage: ImageConstant.imgSettingsWhiteA700,
          text1: "4364",
          text2: "1345 ",
          text3: "8932",
          text4: "8378",
          price: "CARDHOLDER NAME",
          cardholderName: "Sunie Pham",
          validthru: "VALID THRU",
          validThru: "05/24")
    ];
  }
}
