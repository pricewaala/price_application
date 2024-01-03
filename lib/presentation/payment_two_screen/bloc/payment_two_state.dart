// ignore_for_file: must_be_immutable

part of 'payment_two_bloc.dart';

/// Represents the state of PaymentTwo in the application.
class PaymentTwoState extends Equatable {
  PaymentTwoState({this.paymentTwoModelObj});

  PaymentTwoModel? paymentTwoModelObj;

  @override
  List<Object?> get props => [
        paymentTwoModelObj,
      ];
  PaymentTwoState copyWith({PaymentTwoModel? paymentTwoModelObj}) {
    return PaymentTwoState(
      paymentTwoModelObj: paymentTwoModelObj ?? this.paymentTwoModelObj,
    );
  }
}
