import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/signal_item_model.dart';
import '../models/filtertwo_item_model.dart';
import 'package:price_s_application2/presentation/filter_two_draweritem/models/filter_two_model.dart';
part 'filter_two_event.dart';
part 'filter_two_state.dart';

/// A bloc that manages the state of a FilterTwo according to the event that is dispatched to it.
class FilterTwoBloc extends Bloc<FilterTwoEvent, FilterTwoState> {
  FilterTwoBloc(FilterTwoState initialState) : super(initialState) {
    on<FilterTwoInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    FilterTwoInitialEvent event,
    Emitter<FilterTwoState> emit,
  ) async {
    emit(state.copyWith(
        filterTwoModelObj: state.filterTwoModelObj?.copyWith(
      signalItemList: fillSignalItemList(),
      dropdownItemList: fillDropdownItemList(),
      filtertwoItemList: fillFiltertwoItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterTwoState> emit,
  ) {
    List<SignalItemModel> newList =
        List<SignalItemModel>.from(state.filterTwoModelObj!.signalItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        filterTwoModelObj:
            state.filterTwoModelObj?.copyWith(signalItemList: newList)));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FilterTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SignalItemModel> fillSignalItemList() {
    return List.generate(5, (index) => SignalItemModel());
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

  List<FiltertwoItemModel> fillFiltertwoItemList() {
    return [
      FiltertwoItemModel(off: ImageConstant.imgCloseGray10001),
      FiltertwoItemModel(off: ImageConstant.imgCloseGray10001),
      FiltertwoItemModel(off: ImageConstant.imgCloseGray10001),
      FiltertwoItemModel(off: ImageConstant.imgCloseGray10001)
    ];
  }
}
