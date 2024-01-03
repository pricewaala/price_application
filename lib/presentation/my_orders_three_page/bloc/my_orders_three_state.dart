// ignore_for_file: must_be_immutable

part of 'my_orders_three_bloc.dart';

/// Represents the state of MyOrdersThree in the application.
class MyOrdersThreeState extends Equatable {
  MyOrdersThreeState({this.myOrdersThreeModelObj});

  MyOrdersThreeModel? myOrdersThreeModelObj;

  @override
  List<Object?> get props => [
        myOrdersThreeModelObj,
      ];
  MyOrdersThreeState copyWith({MyOrdersThreeModel? myOrdersThreeModelObj}) {
    return MyOrdersThreeState(
      myOrdersThreeModelObj:
          myOrdersThreeModelObj ?? this.myOrdersThreeModelObj,
    );
  }
}
