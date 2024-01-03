// ignore_for_file: must_be_immutable

part of 'setting_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingOneEvent extends Equatable {}

/// Event that is dispatched when the SettingOne widget is first created.
class SettingOneInitialEvent extends SettingOneEvent {
  @override
  List<Object?> get props => [];
}
