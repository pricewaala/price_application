// ignore_for_file: must_be_immutable

part of 'homepage_full_one_bloc.dart';

/// Represents the state of HomepageFullOne in the application.
class HomepageFullOneState extends Equatable {
  HomepageFullOneState({
    this.sliderIndex = 0,
    this.homepageFullOneModelObj,
  });

  HomepageFullOneModel? homepageFullOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homepageFullOneModelObj,
      ];
  HomepageFullOneState copyWith({
    int? sliderIndex,
    HomepageFullOneModel? homepageFullOneModelObj,
  }) {
    return HomepageFullOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageFullOneModelObj:
          homepageFullOneModelObj ?? this.homepageFullOneModelObj,
    );
  }
}
