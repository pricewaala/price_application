import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/frame2_item_model.dart';import 'package:price_s_application2/presentation/filter_one_screen/models/filter_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'filter_one_event.dart';part 'filter_one_state.dart';/// A bloc that manages the state of a FilterOne according to the event that is dispatched to it.
class FilterOneBloc extends Bloc<FilterOneEvent, FilterOneState> with  CodeAutoFill {FilterOneBloc(FilterOneState initialState) : super(initialState) { on<FilterOneInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); on<ChangeOTPEvent>(_changeOTP); on<ChangeDropDownEvent>(_changeDropDown); }

_updateChipView(UpdateChipViewEvent event, Emitter<FilterOneState> emit, ) { List<Frame2ItemModel> newList = List<Frame2ItemModel>.from(state.filterOneModelObj!.frame2ItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(filterOneModelObj: state.filterOneModelObj?.copyWith(frame2ItemList: newList))); } 
@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<FilterOneState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<FilterOneState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<Frame2ItemModel> fillFrame2ItemList() { return List.generate(2, (index) => Frame2ItemModel()); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(FilterOneInitialEvent event, Emitter<FilterOneState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); emit(state.copyWith(filterOneModelObj: state.filterOneModelObj?.copyWith(frame2ItemList: fillFrame2ItemList(), dropdownItemList: fillDropdownItemList()))); } 
 }
