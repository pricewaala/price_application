// ignore_for_file: must_be_immutable

part of 'filter_two_bloc.dart';

/// Represents the state of FilterTwo in the application.
class FilterTwoState extends Equatable {
  FilterTwoState({
    this.selectedDropDownValue,
    this.filterTwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  FilterTwoModel? filterTwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        filterTwoModelObj,
      ];
  FilterTwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    FilterTwoModel? filterTwoModelObj,
  }) {
    return FilterTwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      filterTwoModelObj: filterTwoModelObj ?? this.filterTwoModelObj,
    );
  }
}
