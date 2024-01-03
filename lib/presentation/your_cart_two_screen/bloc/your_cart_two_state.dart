// ignore_for_file: must_be_immutable

part of 'your_cart_two_bloc.dart';

/// Represents the state of YourCartTwo in the application.
class YourCartTwoState extends Equatable {
  YourCartTwoState({this.yourCartTwoModelObj});

  YourCartTwoModel? yourCartTwoModelObj;

  @override
  List<Object?> get props => [
        yourCartTwoModelObj,
      ];
  YourCartTwoState copyWith({YourCartTwoModel? yourCartTwoModelObj}) {
    return YourCartTwoState(
      yourCartTwoModelObj: yourCartTwoModelObj ?? this.yourCartTwoModelObj,
    );
  }
}
