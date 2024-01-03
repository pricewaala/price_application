// ignore_for_file: must_be_immutable

part of 'sidebar_home_bloc.dart';

/// Represents the state of SidebarHome in the application.
class SidebarHomeState extends Equatable {
  SidebarHomeState({
    this.lightController,
    this.sidebarHomeModelObj,
  });

  TextEditingController? lightController;

  SidebarHomeModel? sidebarHomeModelObj;

  @override
  List<Object?> get props => [
        lightController,
        sidebarHomeModelObj,
      ];
  SidebarHomeState copyWith({
    TextEditingController? lightController,
    SidebarHomeModel? sidebarHomeModelObj,
  }) {
    return SidebarHomeState(
      lightController: lightController ?? this.lightController,
      sidebarHomeModelObj: sidebarHomeModelObj ?? this.sidebarHomeModelObj,
    );
  }
}
