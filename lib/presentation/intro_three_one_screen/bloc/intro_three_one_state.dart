// ignore_for_file: must_be_immutable

part of 'intro_three_one_bloc.dart';

/// Represents the state of IntroThreeOne in the application.
class IntroThreeOneState extends Equatable {
  IntroThreeOneState({this.introThreeOneModelObj});

  IntroThreeOneModel? introThreeOneModelObj;

  @override
  List<Object?> get props => [
        introThreeOneModelObj,
      ];
  IntroThreeOneState copyWith({IntroThreeOneModel? introThreeOneModelObj}) {
    return IntroThreeOneState(
      introThreeOneModelObj:
          introThreeOneModelObj ?? this.introThreeOneModelObj,
    );
  }
}
