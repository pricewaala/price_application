// ignore_for_file: must_be_immutable

part of 'intro_five_bloc.dart';

/// Represents the state of IntroFive in the application.
class IntroFiveState extends Equatable {
  IntroFiveState({this.introFiveModelObj});

  IntroFiveModel? introFiveModelObj;

  @override
  List<Object?> get props => [
        introFiveModelObj,
      ];
  IntroFiveState copyWith({IntroFiveModel? introFiveModelObj}) {
    return IntroFiveState(
      introFiveModelObj: introFiveModelObj ?? this.introFiveModelObj,
    );
  }
}
