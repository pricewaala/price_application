import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:price_s_application2/presentation/intro_one_one_screen/models/intro_one_one_model.dart';part 'intro_one_one_event.dart';part 'intro_one_one_state.dart';/// A bloc that manages the state of a IntroOneOne according to the event that is dispatched to it.
class IntroOneOneBloc extends Bloc<IntroOneOneEvent, IntroOneOneState> {IntroOneOneBloc(IntroOneOneState initialState) : super(initialState) { on<IntroOneOneInitialEvent>(_onInitialize); }

_onInitialize(IntroOneOneInitialEvent event, Emitter<IntroOneOneState> emit, ) async  {  } 
 }
