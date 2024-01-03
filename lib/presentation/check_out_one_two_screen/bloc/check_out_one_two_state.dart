// ignore_for_file: must_be_immutable

part of 'check_out_one_two_bloc.dart';

/// Represents the state of CheckOutOneTwo in the application.
class CheckOutOneTwoState extends Equatable {
  CheckOutOneTwoState({
    this.firstNameController,
    this.lastNameController,
    this.nameController,
    this.cityController,
    this.stateProvinceController,
    this.zipcodeController,
    this.phoneNumberController,
    this.codeController,
    this.selectedDropDownValue,
    this.copyaddressdatafromshipping = false,
    this.checkOutOneTwoModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? nameController;

  TextEditingController? cityController;

  TextEditingController? stateProvinceController;

  TextEditingController? zipcodeController;

  TextEditingController? phoneNumberController;

  TextEditingController? codeController;

  SelectionPopupModel? selectedDropDownValue;

  CheckOutOneTwoModel? checkOutOneTwoModelObj;

  bool copyaddressdatafromshipping;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        nameController,
        cityController,
        stateProvinceController,
        zipcodeController,
        phoneNumberController,
        codeController,
        selectedDropDownValue,
        copyaddressdatafromshipping,
        checkOutOneTwoModelObj,
      ];
  CheckOutOneTwoState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? nameController,
    TextEditingController? cityController,
    TextEditingController? stateProvinceController,
    TextEditingController? zipcodeController,
    TextEditingController? phoneNumberController,
    TextEditingController? codeController,
    SelectionPopupModel? selectedDropDownValue,
    bool? copyaddressdatafromshipping,
    CheckOutOneTwoModel? checkOutOneTwoModelObj,
  }) {
    return CheckOutOneTwoState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      nameController: nameController ?? this.nameController,
      cityController: cityController ?? this.cityController,
      stateProvinceController:
          stateProvinceController ?? this.stateProvinceController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      codeController: codeController ?? this.codeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      copyaddressdatafromshipping:
          copyaddressdatafromshipping ?? this.copyaddressdatafromshipping,
      checkOutOneTwoModelObj:
          checkOutOneTwoModelObj ?? this.checkOutOneTwoModelObj,
    );
  }
}
