// ignore_for_file: must_be_immutable

part of 'order_info_two_two_bloc.dart';

/// Represents the state of OrderInfoTwoTwo in the application.
class OrderInfoTwoTwoState extends Equatable {
  OrderInfoTwoTwoState({this.orderInfoTwoTwoModelObj});

  OrderInfoTwoTwoModel? orderInfoTwoTwoModelObj;

  @override
  List<Object?> get props => [
        orderInfoTwoTwoModelObj,
      ];
  OrderInfoTwoTwoState copyWith(
      {OrderInfoTwoTwoModel? orderInfoTwoTwoModelObj}) {
    return OrderInfoTwoTwoState(
      orderInfoTwoTwoModelObj:
          orderInfoTwoTwoModelObj ?? this.orderInfoTwoTwoModelObj,
    );
  }
}
