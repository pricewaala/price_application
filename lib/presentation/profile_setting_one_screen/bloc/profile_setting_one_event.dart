// ignore_for_file: must_be_immutable

part of 'profile_setting_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSettingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSettingOneEvent extends Equatable {}

/// Event that is dispatched when the ProfileSettingOne widget is first created.
class ProfileSettingOneInitialEvent extends ProfileSettingOneEvent {
  @override
  List<Object?> get props => [];
}
