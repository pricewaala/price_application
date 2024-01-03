// ignore_for_file: must_be_immutable

part of 'my_orders_three_two_bloc.dart';

/// Represents the state of MyOrdersThreeTwo in the application.
class MyOrdersThreeTwoState extends Equatable {
  MyOrdersThreeTwoState({this.myOrdersThreeTwoModelObj});

  MyOrdersThreeTwoModel? myOrdersThreeTwoModelObj;

  @override
  List<Object?> get props => [
        myOrdersThreeTwoModelObj,
      ];
  MyOrdersThreeTwoState copyWith(
      {MyOrdersThreeTwoModel? myOrdersThreeTwoModelObj}) {
    return MyOrdersThreeTwoState(
      myOrdersThreeTwoModelObj:
          myOrdersThreeTwoModelObj ?? this.myOrdersThreeTwoModelObj,
    );
  }
}
