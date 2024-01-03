// ignore_for_file: must_be_immutable

part of 'profile_setting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSetting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSettingEvent extends Equatable {}

/// Event that is dispatched when the ProfileSetting widget is first created.
class ProfileSettingInitialEvent extends ProfileSettingEvent {
  @override
  List<Object?> get props => [];
}
