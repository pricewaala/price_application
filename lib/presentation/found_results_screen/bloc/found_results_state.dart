// ignore_for_file: must_be_immutable

part of 'found_results_bloc.dart';

/// Represents the state of FoundResults in the application.
class FoundResultsState extends Equatable {
  FoundResultsState({
    this.selectedDropDownValue,
    this.foundResultsModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  FoundResultsModel? foundResultsModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        foundResultsModelObj,
      ];
  FoundResultsState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    FoundResultsModel? foundResultsModelObj,
  }) {
    return FoundResultsState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      foundResultsModelObj: foundResultsModelObj ?? this.foundResultsModelObj,
    );
  }
}
