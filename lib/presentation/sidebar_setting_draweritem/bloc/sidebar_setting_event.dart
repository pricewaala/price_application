// ignore_for_file: must_be_immutable

part of 'sidebar_setting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SidebarSetting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SidebarSettingEvent extends Equatable {}

/// Event that is dispatched when the SidebarSetting widget is first created.
class SidebarSettingInitialEvent extends SidebarSettingEvent {
  @override
  List<Object?> get props => [];
}
