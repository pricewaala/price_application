// ignore_for_file: must_be_immutable

part of 'discover_full_bloc.dart';

/// Represents the state of DiscoverFull in the application.
class DiscoverFullState extends Equatable {
  DiscoverFullState({
    this.searchController,
    this.discoverFullModelObj,
  });

  TextEditingController? searchController;

  DiscoverFullModel? discoverFullModelObj;

  @override
  List<Object?> get props => [
        searchController,
        discoverFullModelObj,
      ];
  DiscoverFullState copyWith({
    TextEditingController? searchController,
    DiscoverFullModel? discoverFullModelObj,
  }) {
    return DiscoverFullState(
      searchController: searchController ?? this.searchController,
      discoverFullModelObj: discoverFullModelObj ?? this.discoverFullModelObj,
    );
  }
}
