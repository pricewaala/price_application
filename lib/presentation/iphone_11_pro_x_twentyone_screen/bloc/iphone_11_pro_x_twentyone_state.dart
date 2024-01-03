// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_x_twentyone_bloc.dart';

/// Represents the state of Iphone11ProXTwentyone in the application.
class Iphone11ProXTwentyoneState extends Equatable {
  Iphone11ProXTwentyoneState({
    this.searchController,
    this.iphone11ProXTwentyoneModelObj,
  });

  TextEditingController? searchController;

  Iphone11ProXTwentyoneModel? iphone11ProXTwentyoneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone11ProXTwentyoneModelObj,
      ];
  Iphone11ProXTwentyoneState copyWith({
    TextEditingController? searchController,
    Iphone11ProXTwentyoneModel? iphone11ProXTwentyoneModelObj,
  }) {
    return Iphone11ProXTwentyoneState(
      searchController: searchController ?? this.searchController,
      iphone11ProXTwentyoneModelObj:
          iphone11ProXTwentyoneModelObj ?? this.iphone11ProXTwentyoneModelObj,
    );
  }
}
