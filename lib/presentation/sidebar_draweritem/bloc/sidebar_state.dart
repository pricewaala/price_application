// ignore_for_file: must_be_immutable

part of 'sidebar_bloc.dart';

/// Represents the state of Sidebar in the application.
class SidebarState extends Equatable {
  SidebarState({this.sidebarModelObj});

  SidebarModel? sidebarModelObj;

  @override
  List<Object?> get props => [
        sidebarModelObj,
      ];
  SidebarState copyWith({SidebarModel? sidebarModelObj}) {
    return SidebarState(
      sidebarModelObj: sidebarModelObj ?? this.sidebarModelObj,
    );
  }
}
