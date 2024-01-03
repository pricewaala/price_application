import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard5_item_model.dart';
import 'package:price_s_application2/presentation/check_out_one_screen/models/check_out_one_model.dart';
part 'check_out_one_event.dart';
part 'check_out_one_state.dart';

/// A bloc that manages the state of a CheckOutOne according to the event that is dispatched to it.
class CheckOutOneBloc extends Bloc<CheckOutOneEvent, CheckOutOneState> {
  CheckOutOneBloc(CheckOutOneState initialState) : super(initialState) {
    on<CheckOutOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CheckOutOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckOutOneState> emit,
  ) {
    emit(state.copyWith(
      copyaddressdatafromshipping: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<Productcard5ItemModel> fillProductcard5ItemList() {
    return [
      Productcard5ItemModel(
          freeText: "Free",
          deliveryText: "Delivery to home",
          deliveryText1: "Delivery from 3 to 7 business days")
    ];
  }

  _onInitialize(
    CheckOutOneInitialEvent event,
    Emitter<CheckOutOneState> emit,
  ) async {
    emit(state.copyWith(
      shippingFormController: TextEditingController(),
      lastNameController: TextEditingController(),
      nameController: TextEditingController(),
      cityController: TextEditingController(),
      stateProvinceController: TextEditingController(),
      zipcodeController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      copyaddressdatafromshipping: false,
    ));
    emit(state.copyWith(
        checkOutOneModelObj: state.checkOutOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      productcard5ItemList: fillProductcard5ItemList(),
    )));
  }
}
