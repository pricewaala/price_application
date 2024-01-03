// ignore_for_file: must_be_immutable

part of 'setting_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingTwoEvent extends Equatable {}

/// Event that is dispatched when the SettingTwo widget is first created.
class SettingTwoInitialEvent extends SettingTwoEvent {
  @override
  List<Object?> get props => [];
}
