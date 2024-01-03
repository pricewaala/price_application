// ignore_for_file: must_be_immutable

part of 'check_out_one_bloc.dart';

/// Represents the state of CheckOutOne in the application.
class CheckOutOneState extends Equatable {
  CheckOutOneState({
    this.shippingFormController,
    this.lastNameController,
    this.nameController,
    this.cityController,
    this.stateProvinceController,
    this.zipcodeController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.copyaddressdatafromshipping = false,
    this.checkOutOneModelObj,
  });

  TextEditingController? shippingFormController;

  TextEditingController? lastNameController;

  TextEditingController? nameController;

  TextEditingController? cityController;

  TextEditingController? stateProvinceController;

  TextEditingController? zipcodeController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  CheckOutOneModel? checkOutOneModelObj;

  bool copyaddressdatafromshipping;

  @override
  List<Object?> get props => [
        shippingFormController,
        lastNameController,
        nameController,
        cityController,
        stateProvinceController,
        zipcodeController,
        phoneNumberController,
        selectedDropDownValue,
        copyaddressdatafromshipping,
        checkOutOneModelObj,
      ];
  CheckOutOneState copyWith({
    TextEditingController? shippingFormController,
    TextEditingController? lastNameController,
    TextEditingController? nameController,
    TextEditingController? cityController,
    TextEditingController? stateProvinceController,
    TextEditingController? zipcodeController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    bool? copyaddressdatafromshipping,
    CheckOutOneModel? checkOutOneModelObj,
  }) {
    return CheckOutOneState(
      shippingFormController:
          shippingFormController ?? this.shippingFormController,
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
      checkOutOneModelObj: checkOutOneModelObj ?? this.checkOutOneModelObj,
    );
  }
}
