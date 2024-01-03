// ignore_for_file: must_be_immutable

part of 'search_two_one_bloc.dart';

/// Represents the state of SearchTwoOne in the application.
class SearchTwoOneState extends Equatable {
  SearchTwoOneState({
    this.searchController,
    this.searchTwoOneModelObj,
  });

  TextEditingController? searchController;

  SearchTwoOneModel? searchTwoOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTwoOneModelObj,
      ];
  SearchTwoOneState copyWith({
    TextEditingController? searchController,
    SearchTwoOneModel? searchTwoOneModelObj,
  }) {
    return SearchTwoOneState(
      searchController: searchController ?? this.searchController,
      searchTwoOneModelObj: searchTwoOneModelObj ?? this.searchTwoOneModelObj,
    );
  }
}
