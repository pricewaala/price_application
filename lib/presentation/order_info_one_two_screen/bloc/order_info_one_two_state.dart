// ignore_for_file: must_be_immutable

part of 'order_info_one_two_bloc.dart';

/// Represents the state of OrderInfoOneTwo in the application.
class OrderInfoOneTwoState extends Equatable {
  OrderInfoOneTwoState({this.orderInfoOneTwoModelObj});

  OrderInfoOneTwoModel? orderInfoOneTwoModelObj;

  @override
  List<Object?> get props => [
        orderInfoOneTwoModelObj,
      ];
  OrderInfoOneTwoState copyWith(
      {OrderInfoOneTwoModel? orderInfoOneTwoModelObj}) {
    return OrderInfoOneTwoState(
      orderInfoOneTwoModelObj:
          orderInfoOneTwoModelObj ?? this.orderInfoOneTwoModelObj,
    );
  }
}
