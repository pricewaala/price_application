// ignore_for_file: must_be_immutable

part of 'homepage_full_two_bloc.dart';

/// Represents the state of HomepageFullTwo in the application.
class HomepageFullTwoState extends Equatable {
  HomepageFullTwoState({
    this.sliderIndex = 0,
    this.homepageFullTwoModelObj,
  });

  HomepageFullTwoModel? homepageFullTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homepageFullTwoModelObj,
      ];
  HomepageFullTwoState copyWith({
    int? sliderIndex,
    HomepageFullTwoModel? homepageFullTwoModelObj,
  }) {
    return HomepageFullTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageFullTwoModelObj:
          homepageFullTwoModelObj ?? this.homepageFullTwoModelObj,
    );
  }
}
