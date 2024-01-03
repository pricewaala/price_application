import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/frame_item_model.dart';import 'package:price_s_application2/presentation/filter_screen/models/filter_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'filter_event.dart';part 'filter_state.dart';/// A bloc that manages the state of a Filter according to the event that is dispatched to it.
class FilterBloc extends Bloc<FilterEvent, FilterState> with  CodeAutoFill {FilterBloc(FilterState initialState) : super(initialState) { on<FilterInitialEvent>(_onInitialize); on<UpdateChipViewEvent>(_updateChipView); on<ChangeOTPEvent>(_changeOTP); on<ChangeDropDownEvent>(_changeDropDown); }

_updateChipView(UpdateChipViewEvent event, Emitter<FilterState> emit, ) { List<FrameItemModel> newList = List<FrameItemModel>.from(state.filterModelObj!.frameItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(filterModelObj: state.filterModelObj?.copyWith(frameItemList: newList))); } 
@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<FilterState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<FilterState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<FrameItemModel> fillFrameItemList() { return List.generate(2, (index) => FrameItemModel()); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(FilterInitialEvent event, Emitter<FilterState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); emit(state.copyWith(filterModelObj: state.filterModelObj?.copyWith(frameItemList: fillFrameItemList(), dropdownItemList: fillDropdownItemList()))); } 
 }
