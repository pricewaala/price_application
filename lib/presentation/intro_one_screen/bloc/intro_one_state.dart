// ignore_for_file: must_be_immutable

part of 'intro_one_bloc.dart';

/// Represents the state of IntroOne in the application.
class IntroOneState extends Equatable {
  IntroOneState({this.introOneModelObj});

  IntroOneModel? introOneModelObj;

  @override
  List<Object?> get props => [
        introOneModelObj,
      ];
  IntroOneState copyWith({IntroOneModel? introOneModelObj}) {
    return IntroOneState(
      introOneModelObj: introOneModelObj ?? this.introOneModelObj,
    );
  }
}
