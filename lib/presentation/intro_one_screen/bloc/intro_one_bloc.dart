import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:price_s_application2/presentation/intro_one_screen/models/intro_one_model.dart';part 'intro_one_event.dart';part 'intro_one_state.dart';/// A bloc that manages the state of a IntroOne according to the event that is dispatched to it.
class IntroOneBloc extends Bloc<IntroOneEvent, IntroOneState> {IntroOneBloc(IntroOneState initialState) : super(initialState) { on<IntroOneInitialEvent>(_onInitialize); }

_onInitialize(IntroOneInitialEvent event, Emitter<IntroOneState> emit, ) async  {  } 
 }
