// ignore_for_file: must_be_immutable

part of 'homepage_one_bloc.dart';

/// Represents the state of HomepageOne in the application.
class HomepageOneState extends Equatable {
  HomepageOneState({this.homepageOneModelObj});

  HomepageOneModel? homepageOneModelObj;

  @override
  List<Object?> get props => [
        homepageOneModelObj,
      ];
  HomepageOneState copyWith({HomepageOneModel? homepageOneModelObj}) {
    return HomepageOneState(
      homepageOneModelObj: homepageOneModelObj ?? this.homepageOneModelObj,
    );
  }
}
