// ignore_for_file: must_be_immutable

part of 'discover_bloc.dart';

/// Represents the state of Discover in the application.
class DiscoverState extends Equatable {
  DiscoverState({
    this.searchController,
    this.discoverModelObj,
  });

  TextEditingController? searchController;

  DiscoverModel? discoverModelObj;

  @override
  List<Object?> get props => [
        searchController,
        discoverModelObj,
      ];
  DiscoverState copyWith({
    TextEditingController? searchController,
    DiscoverModel? discoverModelObj,
  }) {
    return DiscoverState(
      searchController: searchController ?? this.searchController,
      discoverModelObj: discoverModelObj ?? this.discoverModelObj,
    );
  }
}
