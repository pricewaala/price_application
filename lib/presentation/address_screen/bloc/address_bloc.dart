import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile4_item_model.dart';
import 'package:price_s_application2/presentation/address_screen/models/address_model.dart';
part 'address_event.dart';
part 'address_state.dart';

/// A bloc that manages the state of a Address according to the event that is dispatched to it.
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc(AddressState initialState) : super(initialState) {
    on<AddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressInitialEvent event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
        addressModelObj: state.addressModelObj?.copyWith(
      userprofile4ItemList: fillUserprofile4ItemList(),
    )));
  }

  List<Userprofile4ItemModel> fillUserprofile4ItemList() {
    return [
      Userprofile4ItemModel(
          editImage: ImageConstant.imgContrastBlack900,
          userImage: ImageConstant.imgUserGray80001,
          sendToText: "SEND TO",
          myOfficeText: "My Office",
          editText: "Edit",
          addressText: "SBI Building, street 3, Software Park"),
      Userprofile4ItemModel(
          editImage: ImageConstant.imgMobile,
          userImage: ImageConstant.imgHomeBlueGray40001,
          sendToText: "SEND TO",
          myOfficeText: "My Home",
          editText: "Edit",
          addressText: "SBI Building, street 3, Software Park")
    ];
  }
}
