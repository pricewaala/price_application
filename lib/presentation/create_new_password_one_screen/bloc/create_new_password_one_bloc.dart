import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/create_new_password_one_screen/models/create_new_password_one_model.dart';
part 'create_new_password_one_event.dart';
part 'create_new_password_one_state.dart';

/// A bloc that manages the state of a CreateNewPasswordOne according to the event that is dispatched to it.
class CreateNewPasswordOneBloc
    extends Bloc<CreateNewPasswordOneEvent, CreateNewPasswordOneState> {
  CreateNewPasswordOneBloc(CreateNewPasswordOneState initialState)
      : super(initialState) {
    on<CreateNewPasswordOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateNewPasswordOneInitialEvent event,
    Emitter<CreateNewPasswordOneState> emit,
  ) async {
    emit(state.copyWith(
      newpasswordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
    ));
  }
}
