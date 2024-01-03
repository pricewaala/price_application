// ignore_for_file: must_be_immutable

part of 'filter_one_bloc.dart';

/// Represents the state of FilterOne in the application.
class FilterOneState extends Equatable {
  FilterOneState({
    this.otpController,
    this.selectedDropDownValue,
    this.filterOneModelObj,
  });

  TextEditingController? otpController;

  SelectionPopupModel? selectedDropDownValue;

  FilterOneModel? filterOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        selectedDropDownValue,
        filterOneModelObj,
      ];
  FilterOneState copyWith({
    TextEditingController? otpController,
    SelectionPopupModel? selectedDropDownValue,
    FilterOneModel? filterOneModelObj,
  }) {
    return FilterOneState(
      otpController: otpController ?? this.otpController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      filterOneModelObj: filterOneModelObj ?? this.filterOneModelObj,
    );
  }
}
