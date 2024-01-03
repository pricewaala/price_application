// ignore_for_file: must_be_immutable

part of 'your_cart_bloc.dart';

/// Represents the state of YourCart in the application.
class YourCartState extends Equatable {
  YourCartState({this.yourCartModelObj});

  YourCartModel? yourCartModelObj;

  @override
  List<Object?> get props => [
        yourCartModelObj,
      ];
  YourCartState copyWith({YourCartModel? yourCartModelObj}) {
    return YourCartState(
      yourCartModelObj: yourCartModelObj ?? this.yourCartModelObj,
    );
  }
}
