// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Represents the state of Filter in the application.
class FilterState extends Equatable {
  FilterState({
    this.otpController,
    this.selectedDropDownValue,
    this.filterModelObj,
  });

  TextEditingController? otpController;

  SelectionPopupModel? selectedDropDownValue;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        otpController,
        selectedDropDownValue,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? otpController,
    SelectionPopupModel? selectedDropDownValue,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      otpController: otpController ?? this.otpController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
