// ignore_for_file: must_be_immutable

part of 'my_orders_one_one_bloc.dart';

/// Represents the state of MyOrdersOneOne in the application.
class MyOrdersOneOneState extends Equatable {
  MyOrdersOneOneState({this.myOrdersOneOneModelObj});

  MyOrdersOneOneModel? myOrdersOneOneModelObj;

  @override
  List<Object?> get props => [
        myOrdersOneOneModelObj,
      ];
  MyOrdersOneOneState copyWith({MyOrdersOneOneModel? myOrdersOneOneModelObj}) {
    return MyOrdersOneOneState(
      myOrdersOneOneModelObj:
          myOrdersOneOneModelObj ?? this.myOrdersOneOneModelObj,
    );
  }
}
