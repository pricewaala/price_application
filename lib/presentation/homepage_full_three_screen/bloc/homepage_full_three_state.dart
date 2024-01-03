// ignore_for_file: must_be_immutable

part of 'homepage_full_three_bloc.dart';

/// Represents the state of HomepageFullThree in the application.
class HomepageFullThreeState extends Equatable {
  HomepageFullThreeState({
    this.sliderIndex = 0,
    this.homepageFullThreeModelObj,
  });

  HomepageFullThreeModel? homepageFullThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homepageFullThreeModelObj,
      ];
  HomepageFullThreeState copyWith({
    int? sliderIndex,
    HomepageFullThreeModel? homepageFullThreeModelObj,
  }) {
    return HomepageFullThreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageFullThreeModelObj:
          homepageFullThreeModelObj ?? this.homepageFullThreeModelObj,
    );
  }
}
