import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile14_item_model.dart';
import 'package:price_s_application2/presentation/check_out_two_two_screen/models/check_out_two_two_model.dart';
part 'check_out_two_two_event.dart';
part 'check_out_two_two_state.dart';

/// A bloc that manages the state of a CheckOutTwoTwo according to the event that is dispatched to it.
class CheckOutTwoTwoBloc
    extends Bloc<CheckOutTwoTwoEvent, CheckOutTwoTwoState> {
  CheckOutTwoTwoBloc(CheckOutTwoTwoState initialState) : super(initialState) {
    on<CheckOutTwoTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckOutTwoTwoState> emit,
  ) {
    emit(state.copyWith(
      iagreetoTermsandconditions: event.value,
    ));
  }

  List<Userprofile14ItemModel> fillUserprofile14ItemList() {
    return [
      Userprofile14ItemModel(
          mapImage: ImageConstant.imgMap,
          settingsImage: ImageConstant.imgSettingsWhiteA700,
          text1: "4364",
          text2: "1345 ",
          text3: "8932",
          text4: "8378",
          cardholderNameText: "CARDHOLDER NAME",
          validThruText: "VALID THRU",
          userNameText: "Sunie Pham",
          expiryDateText: "05/24")
    ];
  }

  _onInitialize(
    CheckOutTwoTwoInitialEvent event,
    Emitter<CheckOutTwoTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
      iagreetoTermsandconditions: false,
    ));
    emit(state.copyWith(
        checkOutTwoTwoModelObj: state.checkOutTwoTwoModelObj?.copyWith(
      userprofile14ItemList: fillUserprofile14ItemList(),
    )));
  }
}
