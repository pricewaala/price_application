// ignore_for_file: must_be_immutable

part of 'intro_four_bloc.dart';

/// Represents the state of IntroFour in the application.
class IntroFourState extends Equatable {
  IntroFourState({this.introFourModelObj});

  IntroFourModel? introFourModelObj;

  @override
  List<Object?> get props => [
        introFourModelObj,
      ];
  IntroFourState copyWith({IntroFourModel? introFourModelObj}) {
    return IntroFourState(
      introFourModelObj: introFourModelObj ?? this.introFourModelObj,
    );
  }
}
