// ignore_for_file: must_be_immutable

part of 'discover_three_bloc.dart';

/// Represents the state of DiscoverThree in the application.
class DiscoverThreeState extends Equatable {
  DiscoverThreeState({
    this.searchController,
    this.discoverThreeModelObj,
  });

  TextEditingController? searchController;

  DiscoverThreeModel? discoverThreeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        discoverThreeModelObj,
      ];
  DiscoverThreeState copyWith({
    TextEditingController? searchController,
    DiscoverThreeModel? discoverThreeModelObj,
  }) {
    return DiscoverThreeState(
      searchController: searchController ?? this.searchController,
      discoverThreeModelObj:
          discoverThreeModelObj ?? this.discoverThreeModelObj,
    );
  }
}
