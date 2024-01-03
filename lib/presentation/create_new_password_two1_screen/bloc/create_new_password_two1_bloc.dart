import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:price_s_application2/presentation/create_new_password_two1_screen/models/create_new_password_two1_model.dart';part 'create_new_password_two1_event.dart';part 'create_new_password_two1_state.dart';/// A bloc that manages the state of a CreateNewPasswordTwo1 according to the event that is dispatched to it.
class CreateNewPasswordTwo1Bloc extends Bloc<CreateNewPasswordTwo1Event, CreateNewPasswordTwo1State> {CreateNewPasswordTwo1Bloc(CreateNewPasswordTwo1State initialState) : super(initialState) { on<CreateNewPasswordTwo1InitialEvent>(_onInitialize); }

_onInitialize(CreateNewPasswordTwo1InitialEvent event, Emitter<CreateNewPasswordTwo1State> emit, ) async  { emit(state.copyWith(newpasswordController: TextEditingController(), confirmpasswordController: TextEditingController())); } 
 }
