import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:price_s_application2/presentation/profile_setting_screen/models/profile_setting_model.dart';
part 'profile_setting_event.dart';
part 'profile_setting_state.dart';

/// A bloc that manages the state of a ProfileSetting according to the event that is dispatched to it.
class ProfileSettingBloc
    extends Bloc<ProfileSettingEvent, ProfileSettingState> {
  ProfileSettingBloc(ProfileSettingState initialState) : super(initialState) {
    on<ProfileSettingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSettingInitialEvent event,
    Emitter<ProfileSettingState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      gendervalueController: TextEditingController(),
    ));
  }
}
