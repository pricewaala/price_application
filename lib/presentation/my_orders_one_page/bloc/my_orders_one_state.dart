// ignore_for_file: must_be_immutable

part of 'my_orders_one_bloc.dart';

/// Represents the state of MyOrdersOne in the application.
class MyOrdersOneState extends Equatable {
  MyOrdersOneState({this.myOrdersOneModelObj});

  MyOrdersOneModel? myOrdersOneModelObj;

  @override
  List<Object?> get props => [
        myOrdersOneModelObj,
      ];
  MyOrdersOneState copyWith({MyOrdersOneModel? myOrdersOneModelObj}) {
    return MyOrdersOneState(
      myOrdersOneModelObj: myOrdersOneModelObj ?? this.myOrdersOneModelObj,
    );
  }
}
