// ignore_for_file: must_be_immutable

part of 'check_out_three_bloc.dart';

/// Represents the state of CheckOutThree in the application.
class CheckOutThreeState extends Equatable {
  CheckOutThreeState({this.checkOutThreeModelObj});

  CheckOutThreeModel? checkOutThreeModelObj;

  @override
  List<Object?> get props => [
        checkOutThreeModelObj,
      ];
  CheckOutThreeState copyWith({CheckOutThreeModel? checkOutThreeModelObj}) {
    return CheckOutThreeState(
      checkOutThreeModelObj:
          checkOutThreeModelObj ?? this.checkOutThreeModelObj,
    );
  }
}
