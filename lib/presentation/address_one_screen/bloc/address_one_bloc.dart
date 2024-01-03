import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile16_item_model.dart';
import 'package:price_s_application2/presentation/address_one_screen/models/address_one_model.dart';
part 'address_one_event.dart';
part 'address_one_state.dart';

/// A bloc that manages the state of a AddressOne according to the event that is dispatched to it.
class AddressOneBloc extends Bloc<AddressOneEvent, AddressOneState> {
  AddressOneBloc(AddressOneState initialState) : super(initialState) {
    on<AddressOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressOneInitialEvent event,
    Emitter<AddressOneState> emit,
  ) async {
    emit(state.copyWith(
        addressOneModelObj: state.addressOneModelObj?.copyWith(
      userprofile16ItemList: fillUserprofile16ItemList(),
    )));
  }

  List<Userprofile16ItemModel> fillUserprofile16ItemList() {
    return [
      Userprofile16ItemModel(
          editImage: ImageConstant.imgContrastWhiteA700,
          userImage: ImageConstant.imgUserGray20029x22,
          sendToText: "SEND TO",
          myOfficeText: "My Office",
          editText: "Edit",
          addressText: "SBI Building, street 3, Software Park"),
      Userprofile16ItemModel(
          editImage: ImageConstant.imgContrastWhiteA70016x16,
          userImage: ImageConstant.imgHomeGray200,
          sendToText: "SEND TO",
          myOfficeText: "My Home",
          editText: "Edit",
          addressText: "SBI Building, street 3, Software Park")
    ];
  }
}
