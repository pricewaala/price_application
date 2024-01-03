import '../check_out_one_two_screen/widgets/checkoutonetwo_item_widget.dart';
import 'bloc/check_out_one_two_bloc.dart';
import 'models/check_out_one_two_model.dart';
import 'models/checkoutonetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_checkbox_button.dart';
import 'package:price_s_application2/widgets/custom_drop_down.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class CheckOutOneTwoScreen extends StatelessWidget {
  CheckOutOneTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutOneTwoBloc>(
      create: (context) => CheckOutOneTwoBloc(CheckOutOneTwoState(
        checkOutOneTwoModelObj: CheckOutOneTwoModel(),
      ))
        ..add(CheckOutOneTwoInitialEvent()),
      child: CheckOutOneTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 32.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProcessBlueGray40001,
                            height: 22.v,
                            width: 266.h,
                          ),
                          SizedBox(height: 26.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "lbl_step_1".tr,
                                style: CustomTextStyles
                                    .bodySmallProductSansLightWhiteA700,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "lbl_shipping".tr,
                                style: CustomTextStyles.headlineSmallWhiteA700,
                              ),
                            ),
                          ),
                          SizedBox(height: 35.v),
                          _buildForm(context),
                          SizedBox(height: 59.v),
                          _buildShippingTitle(context),
                          SizedBox(height: 69.v),
                          _buildCouponCode(context),
                          SizedBox(height: 38.v),
                          _buildBillingAddress(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinueToPayment(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_check_out".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.firstNameController,
      builder: (context, firstNameController) {
        return CustomTextFormField(
          controller: firstNameController,
          hintText: "lbl_pham".tr,
          hintStyle: CustomTextStyles.titleSmallGray5006,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.lastNameController,
      builder: (context, lastNameController) {
        return CustomTextFormField(
          controller: lastNameController,
          hintText: "lbl_last_name".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray200,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineOnError,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_street_name".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray200,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.cityController,
      builder: (context, cityController) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "lbl_city".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray200,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStateProvince(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.stateProvinceController,
      builder: (context, stateProvinceController) {
        return CustomTextFormField(
          controller: stateProvinceController,
          hintText: "msg_state_province".tr,
          hintStyle: CustomTextStyles.titleSmallBluegray200,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.zipcodeController,
      builder: (context, zipcodeController) {
        return CustomTextFormField(
          controller: zipcodeController,
          hintText: "lbl_zip_code".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray200,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
        TextEditingController?>(
      selector: (state) => state.phoneNumberController,
      builder: (context, phoneNumberController) {
        return CustomTextFormField(
          controller: phoneNumberController,
          hintText: "lbl_phone_number".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray200,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildForm(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 13.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "lbl_first_name".tr,
                style: CustomTextStyles.titleSmallBluegray200,
              ),
            ),
            SizedBox(height: 16.v),
            _buildFirstName(context),
            SizedBox(height: 30.v),
            _buildLastName(context),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "msg_field_is_required".tr,
                style: CustomTextStyles.bodySmallProductSansLightOnError,
              ),
            ),
            SizedBox(height: 33.v),
            BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
                CheckOutOneTwoModel?>(
              selector: (state) => state.checkOutOneTwoModelObj,
              builder: (context, checkOutOneTwoModelObj) {
                return CustomDropDown(
                  hintText: "lbl_country".tr,
                  hintStyle: CustomTextStyles.bodyMediumBluegray200,
                  items: checkOutOneTwoModelObj?.dropdownItemList ?? [],
                  onChanged: (value) {
                    context
                        .read<CheckOutOneTwoBloc>()
                        .add(ChangeDropDownEvent(value: value));
                  },
                );
              },
            ),
            SizedBox(height: 31.v),
            _buildName(context),
            SizedBox(height: 32.v),
            _buildCity(context),
            SizedBox(height: 34.v),
            _buildStateProvince(context),
            SizedBox(height: 32.v),
            _buildZipcode(context),
            SizedBox(height: 31.v),
            _buildPhoneNumber(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShippingTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 13.h),
          child: Text(
            "lbl_shipping_method".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 28.v),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
              CheckOutOneTwoModel?>(
            selector: (state) => state.checkOutOneTwoModelObj,
            builder: (context, checkOutOneTwoModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount:
                    checkOutOneTwoModelObj?.checkoutonetwoItemList.length ?? 0,
                itemBuilder: (context, index) {
                  CheckoutonetwoItemModel model =
                      checkOutOneTwoModelObj?.checkoutonetwoItemList[index] ??
                          CheckoutonetwoItemModel();
                  return CheckoutonetwoItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCouponCode(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            "lbl_coupon_code".tr,
            style: CustomTextStyles.titleMediumGray5006,
          ),
        ),
        SizedBox(height: 21.v),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState,
              TextEditingController?>(
            selector: (state) => state.codeController,
            builder: (context, codeController) {
              return CustomTextFormField(
                controller: codeController,
                hintText: "msg_have_a_code_type".tr,
                hintStyle: CustomTextStyles.bodySmallBluegray200,
                textInputAction: TextInputAction.done,
                suffix: Padding(
                  padding: EdgeInsets.fromLTRB(30.h, 19.v, 16.h, 20.v),
                  child: Text(
                    "lbl_validate".tr,
                    style: TextStyle(
                      color: Color(0XFF508A7B),
                      fontSize: 12.fSize,
                      fontFamily: 'Product Sans Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 55.v,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 20.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL101,
                filled: true,
                fillColor: appTheme.gray80001,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBillingAddress(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_billing_address".tr,
            style: CustomTextStyles.titleMediumGray5006,
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(right: 34.h),
            child: BlocSelector<CheckOutOneTwoBloc, CheckOutOneTwoState, bool?>(
              selector: (state) => state.copyaddressdatafromshipping,
              builder: (context, copyaddressdatafromshipping) {
                return CustomCheckboxButton(
                  text: "msg_copy_address_data".tr,
                  value: copyaddressdatafromshipping,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  textStyle: CustomTextStyles.bodyMediumBluegray200,
                  onChange: (value) {
                    context
                        .read<CheckOutOneTwoBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueToPayment(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_continue_to_payment".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 52.v,
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL25,
      buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
    );
  }
}
