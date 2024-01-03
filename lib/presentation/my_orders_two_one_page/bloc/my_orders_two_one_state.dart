// ignore_for_file: must_be_immutable

part of 'my_orders_two_one_bloc.dart';

/// Represents the state of MyOrdersTwoOne in the application.
class MyOrdersTwoOneState extends Equatable {
  MyOrdersTwoOneState({this.myOrdersTwoOneModelObj});

  MyOrdersTwoOneModel? myOrdersTwoOneModelObj;

  @override
  List<Object?> get props => [
        myOrdersTwoOneModelObj,
      ];
  MyOrdersTwoOneState copyWith({MyOrdersTwoOneModel? myOrdersTwoOneModelObj}) {
    return MyOrdersTwoOneState(
      myOrdersTwoOneModelObj:
          myOrdersTwoOneModelObj ?? this.myOrdersTwoOneModelObj,
    );
  }
}
