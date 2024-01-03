// ignore_for_file: must_be_immutable

part of 'my_orders_one_two_bloc.dart';

/// Represents the state of MyOrdersOneTwo in the application.
class MyOrdersOneTwoState extends Equatable {
  MyOrdersOneTwoState({this.myOrdersOneTwoModelObj});

  MyOrdersOneTwoModel? myOrdersOneTwoModelObj;

  @override
  List<Object?> get props => [
        myOrdersOneTwoModelObj,
      ];
  MyOrdersOneTwoState copyWith({MyOrdersOneTwoModel? myOrdersOneTwoModelObj}) {
    return MyOrdersOneTwoState(
      myOrdersOneTwoModelObj:
          myOrdersOneTwoModelObj ?? this.myOrdersOneTwoModelObj,
    );
  }
}
