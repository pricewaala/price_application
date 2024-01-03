import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/profile_setting_one_screen/models/profile_setting_one_model.dart';
part 'profile_setting_one_event.dart';
part 'profile_setting_one_state.dart';

/// A bloc that manages the state of a ProfileSettingOne according to the event that is dispatched to it.
class ProfileSettingOneBloc
    extends Bloc<ProfileSettingOneEvent, ProfileSettingOneState> {
  ProfileSettingOneBloc(ProfileSettingOneState initialState)
      : super(initialState) {
    on<ProfileSettingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSettingOneInitialEvent event,
    Emitter<ProfileSettingOneState> emit,
  ) async {
    emit(state.copyWith(
      firstNameEditTextController: TextEditingController(),
      lastNameEditTextController: TextEditingController(),
      emailEditTextController: TextEditingController(),
      phoneEditTextController: TextEditingController(),
    ));
  }
}
