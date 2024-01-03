// ignore_for_file: must_be_immutable

part of 'setting_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingThreeEvent extends Equatable {}

/// Event that is dispatched when the SettingThree widget is first created.
class SettingThreeInitialEvent extends SettingThreeEvent {
  @override
  List<Object?> get props => [];
}
