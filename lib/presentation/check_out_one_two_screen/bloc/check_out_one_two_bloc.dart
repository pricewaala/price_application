import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/checkoutonetwo_item_model.dart';
import 'package:price_s_application2/presentation/check_out_one_two_screen/models/check_out_one_two_model.dart';
part 'check_out_one_two_event.dart';
part 'check_out_one_two_state.dart';

/// A bloc that manages the state of a CheckOutOneTwo according to the event that is dispatched to it.
class CheckOutOneTwoBloc
    extends Bloc<CheckOutOneTwoEvent, CheckOutOneTwoState> {
  CheckOutOneTwoBloc(CheckOutOneTwoState initialState) : super(initialState) {
    on<CheckOutOneTwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CheckOutOneTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CheckOutOneTwoState> emit,
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

  List<CheckoutonetwoItemModel> fillCheckoutonetwoItemList() {
    return List.generate(2, (index) => CheckoutonetwoItemModel());
  }

  _onInitialize(
    CheckOutOneTwoInitialEvent event,
    Emitter<CheckOutOneTwoState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      nameController: TextEditingController(),
      cityController: TextEditingController(),
      stateProvinceController: TextEditingController(),
      zipcodeController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      codeController: TextEditingController(),
      copyaddressdatafromshipping: false,
    ));
    emit(state.copyWith(
        checkOutOneTwoModelObj: state.checkOutOneTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      checkoutonetwoItemList: fillCheckoutonetwoItemList(),
    )));
  }
}
