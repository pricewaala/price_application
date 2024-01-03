// ignore_for_file: must_be_immutable

part of 'intro_six_bloc.dart';

/// Represents the state of IntroSix in the application.
class IntroSixState extends Equatable {
  IntroSixState({
    this.sliderIndex = 0,
    this.introSixModelObj,
  });

  IntroSixModel? introSixModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        introSixModelObj,
      ];
  IntroSixState copyWith({
    int? sliderIndex,
    IntroSixModel? introSixModelObj,
  }) {
    return IntroSixState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      introSixModelObj: introSixModelObj ?? this.introSixModelObj,
    );
  }
}
