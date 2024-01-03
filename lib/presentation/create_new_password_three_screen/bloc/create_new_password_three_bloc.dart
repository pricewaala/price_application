import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/create_new_password_three_screen/models/create_new_password_three_model.dart';
part 'create_new_password_three_event.dart';
part 'create_new_password_three_state.dart';

/// A bloc that manages the state of a CreateNewPasswordThree according to the event that is dispatched to it.
class CreateNewPasswordThreeBloc
    extends Bloc<CreateNewPasswordThreeEvent, CreateNewPasswordThreeState> {
  CreateNewPasswordThreeBloc(CreateNewPasswordThreeState initialState)
      : super(initialState) {
    on<CreateNewPasswordThreeInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CreateNewPasswordThreeState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<CreateNewPasswordThreeState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    CreateNewPasswordThreeInitialEvent event,
    Emitter<CreateNewPasswordThreeState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
