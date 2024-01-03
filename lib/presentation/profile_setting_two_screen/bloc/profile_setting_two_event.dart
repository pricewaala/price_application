// ignore_for_file: must_be_immutable

part of 'profile_setting_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSettingTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSettingTwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileSettingTwo widget is first created.
class ProfileSettingTwoInitialEvent extends ProfileSettingTwoEvent {
  @override
  List<Object?> get props => [];
}
