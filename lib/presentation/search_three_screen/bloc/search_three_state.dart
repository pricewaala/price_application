// ignore_for_file: must_be_immutable

part of 'search_three_bloc.dart';

/// Represents the state of SearchThree in the application.
class SearchThreeState extends Equatable {
  SearchThreeState({
    this.searchController,
    this.searchThreeModelObj,
  });

  TextEditingController? searchController;

  SearchThreeModel? searchThreeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchThreeModelObj,
      ];
  SearchThreeState copyWith({
    TextEditingController? searchController,
    SearchThreeModel? searchThreeModelObj,
  }) {
    return SearchThreeState(
      searchController: searchController ?? this.searchController,
      searchThreeModelObj: searchThreeModelObj ?? this.searchThreeModelObj,
    );
  }
}
