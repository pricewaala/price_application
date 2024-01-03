// ignore_for_file: must_be_immutable

part of 'my_orders_three_one_bloc.dart';

/// Represents the state of MyOrdersThreeOne in the application.
class MyOrdersThreeOneState extends Equatable {
  MyOrdersThreeOneState({this.myOrdersThreeOneModelObj});

  MyOrdersThreeOneModel? myOrdersThreeOneModelObj;

  @override
  List<Object?> get props => [
        myOrdersThreeOneModelObj,
      ];
  MyOrdersThreeOneState copyWith(
      {MyOrdersThreeOneModel? myOrdersThreeOneModelObj}) {
    return MyOrdersThreeOneState(
      myOrdersThreeOneModelObj:
          myOrdersThreeOneModelObj ?? this.myOrdersThreeOneModelObj,
    );
  }
}
