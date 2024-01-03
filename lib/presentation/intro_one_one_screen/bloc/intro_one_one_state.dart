// ignore_for_file: must_be_immutable

part of 'intro_one_one_bloc.dart';

/// Represents the state of IntroOneOne in the application.
class IntroOneOneState extends Equatable {
  IntroOneOneState({this.introOneOneModelObj});

  IntroOneOneModel? introOneOneModelObj;

  @override
  List<Object?> get props => [
        introOneOneModelObj,
      ];
  IntroOneOneState copyWith({IntroOneOneModel? introOneOneModelObj}) {
    return IntroOneOneState(
      introOneOneModelObj: introOneOneModelObj ?? this.introOneOneModelObj,
    );
  }
}
