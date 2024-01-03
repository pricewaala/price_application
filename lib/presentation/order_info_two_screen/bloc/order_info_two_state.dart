// ignore_for_file: must_be_immutable

part of 'order_info_two_bloc.dart';

/// Represents the state of OrderInfoTwo in the application.
class OrderInfoTwoState extends Equatable {
  OrderInfoTwoState({this.orderInfoTwoModelObj});

  OrderInfoTwoModel? orderInfoTwoModelObj;

  @override
  List<Object?> get props => [
        orderInfoTwoModelObj,
      ];
  OrderInfoTwoState copyWith({OrderInfoTwoModel? orderInfoTwoModelObj}) {
    return OrderInfoTwoState(
      orderInfoTwoModelObj: orderInfoTwoModelObj ?? this.orderInfoTwoModelObj,
    );
  }
}
