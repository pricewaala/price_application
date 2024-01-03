import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/shoppingnowframe_item_model.dart';import 'package:price_s_application2/presentation/intro_two_one_screen/models/intro_two_one_model.dart';part 'intro_two_one_event.dart';part 'intro_two_one_state.dart';/// A bloc that manages the state of a IntroTwoOne according to the event that is dispatched to it.
class IntroTwoOneBloc extends Bloc<IntroTwoOneEvent, IntroTwoOneState> {IntroTwoOneBloc(IntroTwoOneState initialState) : super(initialState) { on<IntroTwoOneInitialEvent>(_onInitialize); }

List<ShoppingnowframeItemModel> fillShoppingnowframeItemList() { return [ShoppingnowframeItemModel(fashionPng: ImageConstant.imgFashionPng7178)]; } 
_onInitialize(IntroTwoOneInitialEvent event, Emitter<IntroTwoOneState> emit, ) async  { emit(state.copyWith(sliderIndex: 0)); emit(state.copyWith(introTwoOneModelObj: state.introTwoOneModelObj?.copyWith(shoppingnowframeItemList: fillShoppingnowframeItemList()))); } 
 }
