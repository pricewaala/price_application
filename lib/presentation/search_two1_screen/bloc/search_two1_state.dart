// ignore_for_file: must_be_immutable

part of 'search_two1_bloc.dart';

/// Represents the state of SearchTwo1 in the application.
class SearchTwo1State extends Equatable {
  SearchTwo1State({
    this.searchController,
    this.searchTwo1ModelObj,
  });

  TextEditingController? searchController;

  SearchTwo1Model? searchTwo1ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchTwo1ModelObj,
      ];
  SearchTwo1State copyWith({
    TextEditingController? searchController,
    SearchTwo1Model? searchTwo1ModelObj,
  }) {
    return SearchTwo1State(
      searchController: searchController ?? this.searchController,
      searchTwo1ModelObj: searchTwo1ModelObj ?? this.searchTwo1ModelObj,
    );
  }
}
