// ignore_for_file: must_be_immutable

part of 'my_orders_three_tab_container_bloc.dart';

/// Represents the state of MyOrdersThreeTabContainer in the application.
class MyOrdersThreeTabContainerState extends Equatable {
  MyOrdersThreeTabContainerState({this.myOrdersThreeTabContainerModelObj});

  MyOrdersThreeTabContainerModel? myOrdersThreeTabContainerModelObj;

  @override
  List<Object?> get props => [
        myOrdersThreeTabContainerModelObj,
      ];
  MyOrdersThreeTabContainerState copyWith(
      {MyOrdersThreeTabContainerModel? myOrdersThreeTabContainerModelObj}) {
    return MyOrdersThreeTabContainerState(
      myOrdersThreeTabContainerModelObj: myOrdersThreeTabContainerModelObj ??
          this.myOrdersThreeTabContainerModelObj,
    );
  }
}
