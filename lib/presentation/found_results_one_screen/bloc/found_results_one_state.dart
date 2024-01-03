// ignore_for_file: must_be_immutable

part of 'found_results_one_bloc.dart';

/// Represents the state of FoundResultsOne in the application.
class FoundResultsOneState extends Equatable {
  FoundResultsOneState({
    this.selectedDropDownValue,
    this.foundResultsOneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  FoundResultsOneModel? foundResultsOneModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        foundResultsOneModelObj,
      ];
  FoundResultsOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    FoundResultsOneModel? foundResultsOneModelObj,
  }) {
    return FoundResultsOneState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      foundResultsOneModelObj:
          foundResultsOneModelObj ?? this.foundResultsOneModelObj,
    );
  }
}
