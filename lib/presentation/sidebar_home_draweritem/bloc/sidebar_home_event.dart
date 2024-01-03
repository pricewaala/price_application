// ignore_for_file: must_be_immutable

part of 'sidebar_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SidebarHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SidebarHomeEvent extends Equatable {}

/// Event that is dispatched when the SidebarHome widget is first created.
class SidebarHomeInitialEvent extends SidebarHomeEvent {
  @override
  List<Object?> get props => [];
}
