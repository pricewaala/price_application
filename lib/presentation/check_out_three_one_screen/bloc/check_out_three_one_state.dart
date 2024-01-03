// ignore_for_file: must_be_immutable

part of 'check_out_three_one_bloc.dart';

/// Represents the state of CheckOutThreeOne in the application.
class CheckOutThreeOneState extends Equatable {
  CheckOutThreeOneState({this.checkOutThreeOneModelObj});

  CheckOutThreeOneModel? checkOutThreeOneModelObj;

  @override
  List<Object?> get props => [
        checkOutThreeOneModelObj,
      ];
  CheckOutThreeOneState copyWith(
      {CheckOutThreeOneModel? checkOutThreeOneModelObj}) {
    return CheckOutThreeOneState(
      checkOutThreeOneModelObj:
          checkOutThreeOneModelObj ?? this.checkOutThreeOneModelObj,
    );
  }
}
