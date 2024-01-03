// ignore_for_file: must_be_immutable

part of 'setting_one_bloc.dart';

/// Represents the state of SettingOne in the application.
class SettingOneState extends Equatable {
  SettingOneState({
    this.searchController,
    this.settingOneModelObj,
  });

  TextEditingController? searchController;

  SettingOneModel? settingOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        settingOneModelObj,
      ];
  SettingOneState copyWith({
    TextEditingController? searchController,
    SettingOneModel? settingOneModelObj,
  }) {
    return SettingOneState(
      searchController: searchController ?? this.searchController,
      settingOneModelObj: settingOneModelObj ?? this.settingOneModelObj,
    );
  }
}
