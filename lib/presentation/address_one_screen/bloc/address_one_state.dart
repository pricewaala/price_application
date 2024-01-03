// ignore_for_file: must_be_immutable

part of 'address_one_bloc.dart';

/// Represents the state of AddressOne in the application.
class AddressOneState extends Equatable {
  AddressOneState({this.addressOneModelObj});

  AddressOneModel? addressOneModelObj;

  @override
  List<Object?> get props => [
        addressOneModelObj,
      ];
  AddressOneState copyWith({AddressOneModel? addressOneModelObj}) {
    return AddressOneState(
      addressOneModelObj: addressOneModelObj ?? this.addressOneModelObj,
    );
  }
}
