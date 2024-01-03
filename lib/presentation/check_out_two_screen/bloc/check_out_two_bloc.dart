import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paymentmethod_item_model.dart';
import '../models/userprofile1_item_model.dart';
import 'package:price_s_application2/presentation/check_out_two_screen/models/check_out_two_model.dart';
part 'check_out_two_event.dart';
part 'check_out_two_state.dart';

/// A bloc that manages the state of a CheckOutTwo according to the event that is dispatched to it.
class CheckOutTwoBloc extends Bloc<CheckOutTwoEvent, CheckOutTwoState> {
  CheckOutTwoBloc(CheckOutTwoState initialState) : super(initialState) {
    on<CheckOutTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckOutTwoState> emit,
  ) {
    emit(state.copyWith(
      iagreetoTermsandconditions: event.value,
    ));
  }

  List<PaymentmethodItemModel> fillPaymentmethodItemList() {
    return [
      PaymentmethodItemModel(
          cash: ImageConstant.imgProfileWhiteA700, cash1: "Cash"),
      PaymentmethodItemModel(
          cash: ImageConstant.imgTelevision, cash1: "Credit Card")
    ];
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          image: ImageConstant.imgMap,
          settingsImage: ImageConstant.imgSettingsWhiteA700,
          text1: "4364",
          text2: "1345 ",
          text3: "8932",
          text4: "8378",
          cardholderName: "CARDHOLDER NAME",
          validThru: "VALID THRU",
          userName: "Sunie Pham",
          expiryDate: "05/24")
    ];
  }

  _onInitialize(
    CheckOutTwoInitialEvent event,
    Emitter<CheckOutTwoState> emit,
  ) async {
    emit(state.copyWith(
      iagreetoTermsandconditions: false,
    ));
    emit(state.copyWith(
        checkOutTwoModelObj: state.checkOutTwoModelObj?.copyWith(
      paymentmethodItemList: fillPaymentmethodItemList(),
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }
}
