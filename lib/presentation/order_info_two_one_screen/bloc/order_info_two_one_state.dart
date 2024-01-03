// ignore_for_file: must_be_immutable

part of 'order_info_two_one_bloc.dart';

/// Represents the state of OrderInfoTwoOne in the application.
class OrderInfoTwoOneState extends Equatable {
  OrderInfoTwoOneState({this.orderInfoTwoOneModelObj});

  OrderInfoTwoOneModel? orderInfoTwoOneModelObj;

  @override
  List<Object?> get props => [
        orderInfoTwoOneModelObj,
      ];
  OrderInfoTwoOneState copyWith(
      {OrderInfoTwoOneModel? orderInfoTwoOneModelObj}) {
    return OrderInfoTwoOneState(
      orderInfoTwoOneModelObj:
          orderInfoTwoOneModelObj ?? this.orderInfoTwoOneModelObj,
    );
  }
}
