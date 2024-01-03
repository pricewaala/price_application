// ignore_for_file: must_be_immutable

part of 'order_info_one_one_bloc.dart';

/// Represents the state of OrderInfoOneOne in the application.
class OrderInfoOneOneState extends Equatable {
  OrderInfoOneOneState({this.orderInfoOneOneModelObj});

  OrderInfoOneOneModel? orderInfoOneOneModelObj;

  @override
  List<Object?> get props => [
        orderInfoOneOneModelObj,
      ];
  OrderInfoOneOneState copyWith(
      {OrderInfoOneOneModel? orderInfoOneOneModelObj}) {
    return OrderInfoOneOneState(
      orderInfoOneOneModelObj:
          orderInfoOneOneModelObj ?? this.orderInfoOneOneModelObj,
    );
  }
}
