import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/create_new_password_four_screen/models/create_new_password_four_model.dart';
part 'create_new_password_four_event.dart';
part 'create_new_password_four_state.dart';

/// A bloc that manages the state of a CreateNewPasswordFour according to the event that is dispatched to it.
class CreateNewPasswordFourBloc
    extends Bloc<CreateNewPasswordFourEvent, CreateNewPasswordFourState> {
  CreateNewPasswordFourBloc(CreateNewPasswordFourState initialState)
      : super(initialState) {
    on<CreateNewPasswordFourInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CreateNewPasswordFourState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<CreateNewPasswordFourState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    CreateNewPasswordFourInitialEvent event,
    Emitter<CreateNewPasswordFourState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
