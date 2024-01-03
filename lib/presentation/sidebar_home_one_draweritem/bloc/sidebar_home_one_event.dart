// ignore_for_file: must_be_immutable

part of 'sidebar_home_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SidebarHomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SidebarHomeOneEvent extends Equatable {}

/// Event that is dispatched when the SidebarHomeOne widget is first created.
class SidebarHomeOneInitialEvent extends SidebarHomeOneEvent {
  @override
  List<Object?> get props => [];
}
