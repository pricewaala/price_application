// ignore_for_file: must_be_immutable

part of 'sidebar_home_one_bloc.dart';

/// Represents the state of SidebarHomeOne in the application.
class SidebarHomeOneState extends Equatable {
  SidebarHomeOneState({
    this.lightController,
    this.sidebarHomeOneModelObj,
  });

  TextEditingController? lightController;

  SidebarHomeOneModel? sidebarHomeOneModelObj;

  @override
  List<Object?> get props => [
        lightController,
        sidebarHomeOneModelObj,
      ];
  SidebarHomeOneState copyWith({
    TextEditingController? lightController,
    SidebarHomeOneModel? sidebarHomeOneModelObj,
  }) {
    return SidebarHomeOneState(
      lightController: lightController ?? this.lightController,
      sidebarHomeOneModelObj:
          sidebarHomeOneModelObj ?? this.sidebarHomeOneModelObj,
    );
  }
}
