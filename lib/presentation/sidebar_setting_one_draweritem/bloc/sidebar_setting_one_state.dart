// ignore_for_file: must_be_immutable

part of 'sidebar_setting_one_bloc.dart';

/// Represents the state of SidebarSettingOne in the application.
class SidebarSettingOneState extends Equatable {
  SidebarSettingOneState({
    this.searchController,
    this.sidebarSettingOneModelObj,
  });

  TextEditingController? searchController;

  SidebarSettingOneModel? sidebarSettingOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        sidebarSettingOneModelObj,
      ];
  SidebarSettingOneState copyWith({
    TextEditingController? searchController,
    SidebarSettingOneModel? sidebarSettingOneModelObj,
  }) {
    return SidebarSettingOneState(
      searchController: searchController ?? this.searchController,
      sidebarSettingOneModelObj:
          sidebarSettingOneModelObj ?? this.sidebarSettingOneModelObj,
    );
  }
}
