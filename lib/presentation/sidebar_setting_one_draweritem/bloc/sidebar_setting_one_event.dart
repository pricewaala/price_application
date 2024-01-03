// ignore_for_file: must_be_immutable

part of 'sidebar_setting_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SidebarSettingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SidebarSettingOneEvent extends Equatable {}

/// Event that is dispatched when the SidebarSettingOne widget is first created.
class SidebarSettingOneInitialEvent extends SidebarSettingOneEvent {
  @override
  List<Object?> get props => [];
}
