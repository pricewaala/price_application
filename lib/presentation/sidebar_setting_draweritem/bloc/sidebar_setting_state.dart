// ignore_for_file: must_be_immutable

part of 'sidebar_setting_bloc.dart';

/// Represents the state of SidebarSetting in the application.
class SidebarSettingState extends Equatable {
  SidebarSettingState({
    this.searchController,
    this.sidebarSettingModelObj,
  });

  TextEditingController? searchController;

  SidebarSettingModel? sidebarSettingModelObj;

  @override
  List<Object?> get props => [
        searchController,
        sidebarSettingModelObj,
      ];
  SidebarSettingState copyWith({
    TextEditingController? searchController,
    SidebarSettingModel? sidebarSettingModelObj,
  }) {
    return SidebarSettingState(
      searchController: searchController ?? this.searchController,
      sidebarSettingModelObj:
          sidebarSettingModelObj ?? this.sidebarSettingModelObj,
    );
  }
}
