// ignore_for_file: must_be_immutable

part of 'search_two_bloc.dart';

/// Represents the state of SearchTwo in the application.
class SearchTwoState extends Equatable {
  SearchTwoState({
    this.searchController,
    this.searchTwoModelObj,
  });

  TextEditingController? searchController;

  SearchTwoModel? searchTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTwoModelObj,
      ];
  SearchTwoState copyWith({
    TextEditingController? searchController,
    SearchTwoModel? searchTwoModelObj,
  }) {
    return SearchTwoState(
      searchController: searchController ?? this.searchController,
      searchTwoModelObj: searchTwoModelObj ?? this.searchTwoModelObj,
    );
  }
}
