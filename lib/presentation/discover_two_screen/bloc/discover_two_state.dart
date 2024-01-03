// ignore_for_file: must_be_immutable

part of 'discover_two_bloc.dart';

/// Represents the state of DiscoverTwo in the application.
class DiscoverTwoState extends Equatable {
  DiscoverTwoState({
    this.searchController,
    this.discoverTwoModelObj,
  });

  TextEditingController? searchController;

  DiscoverTwoModel? discoverTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        discoverTwoModelObj,
      ];
  DiscoverTwoState copyWith({
    TextEditingController? searchController,
    DiscoverTwoModel? discoverTwoModelObj,
  }) {
    return DiscoverTwoState(
      searchController: searchController ?? this.searchController,
      discoverTwoModelObj: discoverTwoModelObj ?? this.discoverTwoModelObj,
    );
  }
}
