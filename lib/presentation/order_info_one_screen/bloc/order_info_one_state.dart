// ignore_for_file: must_be_immutable

part of 'order_info_one_bloc.dart';

/// Represents the state of OrderInfoOne in the application.
class OrderInfoOneState extends Equatable {
  OrderInfoOneState({this.orderInfoOneModelObj});

  OrderInfoOneModel? orderInfoOneModelObj;

  @override
  List<Object?> get props => [
        orderInfoOneModelObj,
      ];
  OrderInfoOneState copyWith({OrderInfoOneModel? orderInfoOneModelObj}) {
    return OrderInfoOneState(
      orderInfoOneModelObj: orderInfoOneModelObj ?? this.orderInfoOneModelObj,
    );
  }
}
