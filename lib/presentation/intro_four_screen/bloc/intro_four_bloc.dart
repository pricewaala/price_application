import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:price_s_application2/presentation/intro_four_screen/models/intro_four_model.dart';part 'intro_four_event.dart';part 'intro_four_state.dart';/// A bloc that manages the state of a IntroFour according to the event that is dispatched to it.
class IntroFourBloc extends Bloc<IntroFourEvent, IntroFourState> {IntroFourBloc(IntroFourState initialState) : super(initialState) { on<IntroFourInitialEvent>(_onInitialize); }

_onInitialize(IntroFourInitialEvent event, Emitter<IntroFourState> emit, ) async  {  } 
 }
