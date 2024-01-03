// ignore_for_file: must_be_immutable

part of 'discover_one_bloc.dart';

/// Represents the state of DiscoverOne in the application.
class DiscoverOneState extends Equatable {
  DiscoverOneState({
    this.searchController,
    this.discoverOneModelObj,
  });

  TextEditingController? searchController;

  DiscoverOneModel? discoverOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        discoverOneModelObj,
      ];
  DiscoverOneState copyWith({
    TextEditingController? searchController,
    DiscoverOneModel? discoverOneModelObj,
  }) {
    return DiscoverOneState(
      searchController: searchController ?? this.searchController,
      discoverOneModelObj: discoverOneModelObj ?? this.discoverOneModelObj,
    );
  }
}
