// ignore_for_file: must_be_immutable

part of 'my_orders_two_bloc.dart';

/// Represents the state of MyOrdersTwo in the application.
class MyOrdersTwoState extends Equatable {
  MyOrdersTwoState({this.myOrdersTwoModelObj});

  MyOrdersTwoModel? myOrdersTwoModelObj;

  @override
  List<Object?> get props => [
        myOrdersTwoModelObj,
      ];
  MyOrdersTwoState copyWith({MyOrdersTwoModel? myOrdersTwoModelObj}) {
    return MyOrdersTwoState(
      myOrdersTwoModelObj: myOrdersTwoModelObj ?? this.myOrdersTwoModelObj,
    );
  }
}
