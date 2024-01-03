// ignore_for_file: must_be_immutable

part of 'welcome_one_bloc.dart';

/// Represents the state of WelcomeOne in the application.
class WelcomeOneState extends Equatable {
  WelcomeOneState({this.welcomeOneModelObj});

  WelcomeOneModel? welcomeOneModelObj;

  @override
  List<Object?> get props => [
        welcomeOneModelObj,
      ];
  WelcomeOneState copyWith({WelcomeOneModel? welcomeOneModelObj}) {
    return WelcomeOneState(
      welcomeOneModelObj: welcomeOneModelObj ?? this.welcomeOneModelObj,
    );
  }
}
