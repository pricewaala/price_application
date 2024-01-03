// ignore_for_file: must_be_immutable

part of 'your_cart_one_bloc.dart';

/// Represents the state of YourCartOne in the application.
class YourCartOneState extends Equatable {
  YourCartOneState({this.yourCartOneModelObj});

  YourCartOneModel? yourCartOneModelObj;

  @override
  List<Object?> get props => [
        yourCartOneModelObj,
      ];
  YourCartOneState copyWith({YourCartOneModel? yourCartOneModelObj}) {
    return YourCartOneState(
      yourCartOneModelObj: yourCartOneModelObj ?? this.yourCartOneModelObj,
    );
  }
}
