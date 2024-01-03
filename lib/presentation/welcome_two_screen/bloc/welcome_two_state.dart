// ignore_for_file: must_be_immutable

part of 'welcome_two_bloc.dart';

/// Represents the state of WelcomeTwo in the application.
class WelcomeTwoState extends Equatable {
  WelcomeTwoState({this.welcomeTwoModelObj});

  WelcomeTwoModel? welcomeTwoModelObj;

  @override
  List<Object?> get props => [
        welcomeTwoModelObj,
      ];
  WelcomeTwoState copyWith({WelcomeTwoModel? welcomeTwoModelObj}) {
    return WelcomeTwoState(
      welcomeTwoModelObj: welcomeTwoModelObj ?? this.welcomeTwoModelObj,
    );
  }
}
