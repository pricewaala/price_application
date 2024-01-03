import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/deliveryoptions_item_model.dart';
import 'package:price_s_application2/presentation/check_out_one_one_screen/models/check_out_one_one_model.dart';
part 'check_out_one_one_event.dart';
part 'check_out_one_one_state.dart';

/// A bloc that manages the state of a CheckOutOneOne according to the event that is dispatched to it.
class CheckOutOneOneBloc
    extends Bloc<CheckOutOneOneEvent, CheckOutOneOneState> {
  CheckOutOneOneBloc(CheckOutOneOneState initialState) : super(initialState) {
    on<CheckOutOneOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CheckOutOneOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckOutOneOneState> emit,
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

  List<DeliveryoptionsItemModel> fillDeliveryoptionsItemList() {
    return [
      DeliveryoptionsItemModel(
          freeText: "Free",
          deliveryText: "Delivery to home",
          deliveryTimeText: "Delivery from 3 to 7 business days")
    ];
  }

  _onInitialize(
    CheckOutOneOneInitialEvent event,
    Emitter<CheckOutOneOneState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      nameController: TextEditingController(),
      cityController: TextEditingController(),
      stateProvinceController: TextEditingController(),
      zipcodeController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      copyaddressdatafromshipping: false,
    ));
    emit(state.copyWith(
        checkOutOneOneModelObj: state.checkOutOneOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      deliveryoptionsItemList: fillDeliveryoptionsItemList(),
    )));
  }
}
