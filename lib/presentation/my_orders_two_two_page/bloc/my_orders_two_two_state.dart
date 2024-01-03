// ignore_for_file: must_be_immutable

part of 'my_orders_two_two_bloc.dart';

/// Represents the state of MyOrdersTwoTwo in the application.
class MyOrdersTwoTwoState extends Equatable {
  MyOrdersTwoTwoState({this.myOrdersTwoTwoModelObj});

  MyOrdersTwoTwoModel? myOrdersTwoTwoModelObj;

  @override
  List<Object?> get props => [
        myOrdersTwoTwoModelObj,
      ];
  MyOrdersTwoTwoState copyWith({MyOrdersTwoTwoModel? myOrdersTwoTwoModelObj}) {
    return MyOrdersTwoTwoState(
      myOrdersTwoTwoModelObj:
          myOrdersTwoTwoModelObj ?? this.myOrdersTwoTwoModelObj,
    );
  }
}
