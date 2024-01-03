// ignore_for_file: must_be_immutable

part of 'found_results_two_bloc.dart';

/// Represents the state of FoundResultsTwo in the application.
class FoundResultsTwoState extends Equatable {
  FoundResultsTwoState({
    this.selectedDropDownValue,
    this.foundResultsTwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  FoundResultsTwoModel? foundResultsTwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        foundResultsTwoModelObj,
      ];
  FoundResultsTwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    FoundResultsTwoModel? foundResultsTwoModelObj,
  }) {
    return FoundResultsTwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      foundResultsTwoModelObj:
          foundResultsTwoModelObj ?? this.foundResultsTwoModelObj,
    );
  }
}
