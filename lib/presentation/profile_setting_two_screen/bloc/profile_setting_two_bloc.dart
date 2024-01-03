import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/profile_setting_two_screen/models/profile_setting_two_model.dart';
part 'profile_setting_two_event.dart';
part 'profile_setting_two_state.dart';

/// A bloc that manages the state of a ProfileSettingTwo according to the event that is dispatched to it.
class ProfileSettingTwoBloc
    extends Bloc<ProfileSettingTwoEvent, ProfileSettingTwoState> {
  ProfileSettingTwoBloc(ProfileSettingTwoState initialState)
      : super(initialState) {
    on<ProfileSettingTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSettingTwoInitialEvent event,
    Emitter<ProfileSettingTwoState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      gendervalueController: TextEditingController(),
    ));
  }
}
