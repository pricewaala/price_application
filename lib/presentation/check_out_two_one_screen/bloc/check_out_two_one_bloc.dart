import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile10_item_model.dart';
import '../models/userprofile11_item_model.dart';
import 'package:price_s_application2/presentation/check_out_two_one_screen/models/check_out_two_one_model.dart';
part 'check_out_two_one_event.dart';
part 'check_out_two_one_state.dart';

/// A bloc that manages the state of a CheckOutTwoOne according to the event that is dispatched to it.
class CheckOutTwoOneBloc
    extends Bloc<CheckOutTwoOneEvent, CheckOutTwoOneState> {
  CheckOutTwoOneBloc(CheckOutTwoOneState initialState) : super(initialState) {
    on<CheckOutTwoOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckOutTwoOneState> emit,
  ) {
    emit(state.copyWith(
      iagreetoTermsandconditions: event.value,
    ));
  }

  List<Userprofile10ItemModel> fillUserprofile10ItemList() {
    return [
      Userprofile10ItemModel(
          userImage: ImageConstant.imgProfileWhiteA700, cash: "Cash"),
      Userprofile10ItemModel(
          userImage: ImageConstant.imgTelevision, cash: "Credit Card")
    ];
  }

  List<Userprofile11ItemModel> fillUserprofile11ItemList() {
    return [
      Userprofile11ItemModel(
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
    CheckOutTwoOneInitialEvent event,
    Emitter<CheckOutTwoOneState> emit,
  ) async {
    emit(state.copyWith(
      iagreetoTermsandconditions: false,
    ));
    emit(state.copyWith(
        checkOutTwoOneModelObj: state.checkOutTwoOneModelObj?.copyWith(
      userprofile10ItemList: fillUserprofile10ItemList(),
      userprofile11ItemList: fillUserprofile11ItemList(),
    )));
  }
}
