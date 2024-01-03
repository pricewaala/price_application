// ignore_for_file: must_be_immutable

part of 'homepage_full_bloc.dart';

/// Represents the state of HomepageFull in the application.
class HomepageFullState extends Equatable {
  HomepageFullState({
    this.sliderIndex = 0,
    this.homepageFullModelObj,
  });

  HomepageFullModel? homepageFullModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homepageFullModelObj,
      ];
  HomepageFullState copyWith({
    int? sliderIndex,
    HomepageFullModel? homepageFullModelObj,
  }) {
    return HomepageFullState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageFullModelObj: homepageFullModelObj ?? this.homepageFullModelObj,
    );
  }
}
