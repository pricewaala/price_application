// ignore_for_file: must_be_immutable

part of 'intro_two_one_bloc.dart';

/// Represents the state of IntroTwoOne in the application.
class IntroTwoOneState extends Equatable {
  IntroTwoOneState({
    this.sliderIndex = 0,
    this.introTwoOneModelObj,
  });

  IntroTwoOneModel? introTwoOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        introTwoOneModelObj,
      ];
  IntroTwoOneState copyWith({
    int? sliderIndex,
    IntroTwoOneModel? introTwoOneModelObj,
  }) {
    return IntroTwoOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      introTwoOneModelObj: introTwoOneModelObj ?? this.introTwoOneModelObj,
    );
  }
}
