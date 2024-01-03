// ignore_for_file: must_be_immutable

part of 'check_out_one_one_bloc.dart';

/// Represents the state of CheckOutOneOne in the application.
class CheckOutOneOneState extends Equatable {
  CheckOutOneOneState({
    this.firstNameController,
    this.lastNameController,
    this.nameController,
    this.cityController,
    this.stateProvinceController,
    this.zipcodeController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.copyaddressdatafromshipping = false,
    this.checkOutOneOneModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? nameController;

  TextEditingController? cityController;

  TextEditingController? stateProvinceController;

  TextEditingController? zipcodeController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  CheckOutOneOneModel? checkOutOneOneModelObj;

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
        selectedDropDownValue,
        copyaddressdatafromshipping,
        checkOutOneOneModelObj,
      ];
  CheckOutOneOneState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? nameController,
    TextEditingController? cityController,
    TextEditingController? stateProvinceController,
    TextEditingController? zipcodeController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    bool? copyaddressdatafromshipping,
    CheckOutOneOneModel? checkOutOneOneModelObj,
  }) {
    return CheckOutOneOneState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      nameController: nameController ?? this.nameController,
      cityController: cityController ?? this.cityController,
      stateProvinceController:
          stateProvinceController ?? this.stateProvinceController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      copyaddressdatafromshipping:
          copyaddressdatafromshipping ?? this.copyaddressdatafromshipping,
      checkOutOneOneModelObj:
          checkOutOneOneModelObj ?? this.checkOutOneOneModelObj,
    );
  }
}
