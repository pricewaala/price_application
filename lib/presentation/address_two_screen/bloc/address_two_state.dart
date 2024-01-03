// ignore_for_file: must_be_immutable

part of 'address_two_bloc.dart';

/// Represents the state of AddressTwo in the application.
class AddressTwoState extends Equatable {
  AddressTwoState({this.addressTwoModelObj});

  AddressTwoModel? addressTwoModelObj;

  @override
  List<Object?> get props => [
        addressTwoModelObj,
      ];
  AddressTwoState copyWith({AddressTwoModel? addressTwoModelObj}) {
    return AddressTwoState(
      addressTwoModelObj: addressTwoModelObj ?? this.addressTwoModelObj,
    );
  }
}
