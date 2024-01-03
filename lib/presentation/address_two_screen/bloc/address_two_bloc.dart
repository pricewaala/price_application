import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile15_item_model.dart';
import 'package:price_s_application2/presentation/address_two_screen/models/address_two_model.dart';
part 'address_two_event.dart';
part 'address_two_state.dart';

/// A bloc that manages the state of a AddressTwo according to the event that is dispatched to it.
class AddressTwoBloc extends Bloc<AddressTwoEvent, AddressTwoState> {
  AddressTwoBloc(AddressTwoState initialState) : super(initialState) {
    on<AddressTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressTwoInitialEvent event,
    Emitter<AddressTwoState> emit,
  ) async {
    emit(state.copyWith(
        addressTwoModelObj: state.addressTwoModelObj?.copyWith(
      userprofile15ItemList: fillUserprofile15ItemList(),
    )));
  }

  List<Userprofile15ItemModel> fillUserprofile15ItemList() {
    return [
      Userprofile15ItemModel(
          editImage: ImageConstant.imgContrastBlack900,
          userImage: ImageConstant.imgUserGray80001,
          sendToText: "SEND TO",
          myOfficeText: "My Office",
          editText: "Edit",
          addressText: "SBI Building, street 3, Software Park"),
      Userprofile15ItemModel(
          editImage: ImageConstant.imgMobile,
          userImage: ImageConstant.imgHomeBlueGray40001,
          sendToText: "SEND TO",
          myOfficeText: "My Home",
          editText: "Edit",
          addressText: "SBI Building, street 3, Software Park")
    ];
  }
}
