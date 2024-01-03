import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/shoppingnowframe1_item_model.dart';import 'package:price_s_application2/presentation/intro_six_screen/models/intro_six_model.dart';part 'intro_six_event.dart';part 'intro_six_state.dart';/// A bloc that manages the state of a IntroSix according to the event that is dispatched to it.
class IntroSixBloc extends Bloc<IntroSixEvent, IntroSixState> {IntroSixBloc(IntroSixState initialState) : super(initialState) { on<IntroSixInitialEvent>(_onInitialize); }

List<Shoppingnowframe1ItemModel> fillShoppingnowframe1ItemList() { return [Shoppingnowframe1ItemModel(fashionPng: ImageConstant.imgFashionPng7178)]; } 
_onInitialize(IntroSixInitialEvent event, Emitter<IntroSixState> emit, ) async  { emit(state.copyWith(sliderIndex: 0)); emit(state.copyWith(introSixModelObj: state.introSixModelObj?.copyWith(shoppingnowframe1ItemList: fillShoppingnowframe1ItemList()))); } 
 }
