import '../check_out_one_one_screen/widgets/deliveryoptions_item_widget.dart';
import 'bloc/check_out_one_one_bloc.dart';
import 'models/check_out_one_one_model.dart';
import 'models/deliveryoptions_item_model.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_checkbox_button.dart';
import 'package:price_s_application2/widgets/custom_drop_down.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class CheckOutOneOneScreen extends StatelessWidget {
  CheckOutOneOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutOneOneBloc>(
      create: (context) => CheckOutOneOneBloc(CheckOutOneOneState(
        checkOutOneOneModelObj: CheckOutOneOneModel(),
      ))
        ..add(CheckOutOneOneInitialEvent()),
      child: CheckOutOneOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 14.v),
            child: Column(
              children: [
                SizedBox(height: 12.v),
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
                          AnotherStepper(
                            stepperDirection: Axis.horizontal,
                            activeIndex: 0,
                            barThickness: 3,
                            inverted: true,
                            stepperList: [
                              StepperData(),
                              StepperData(),
                              StepperData(),
                            ],
                          ),
                          SizedBox(height: 26.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "lbl_step_1".tr,
                                style: CustomTextStyles
                                    .bodySmallProductSansLight11,
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
                                style: CustomTextStyles
                                    .headlineSmallOnPrimaryContainer,
                              ),
                            ),
                          ),
                          SizedBox(height: 35.v),
                          _buildForm(context),
                          SizedBox(height: 59.v),
                          _buildShippingMethodTitle(context),
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
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "lbl_check_out".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.firstNameController,
      builder: (context, firstNameController) {
        return CustomTextFormField(
          controller: firstNameController,
          hintText: "lbl_pham".tr,
          hintStyle: CustomTextStyles.titleSmallBlack90015,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.lastNameController,
      builder: (context, lastNameController) {
        return CustomTextFormField(
          controller: lastNameController,
          hintText: "lbl_last_name".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray40001,
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
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_street_name".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray40001,
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
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.cityController,
      builder: (context, cityController) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "lbl_city".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray40001,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStateProvince(BuildContext context) {
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.stateProvinceController,
      builder: (context, stateProvinceController) {
        return CustomTextFormField(
          controller: stateProvinceController,
          hintText: "msg_state_province".tr,
          hintStyle: theme.textTheme.titleSmall!,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.zipcodeController,
      builder: (context, zipcodeController) {
        return CustomTextFormField(
          controller: zipcodeController,
          hintText: "lbl_zip_code".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray40001,
          borderDecoration: TextFormFieldStyleHelper.underLineGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
        TextEditingController?>(
      selector: (state) => state.phoneNumberController,
      builder: (context, phoneNumberController) {
        return CustomTextFormField(
          controller: phoneNumberController,
          hintText: "lbl_phone_number".tr,
          hintStyle: CustomTextStyles.bodyMediumBluegray40001,
          textInputAction: TextInputAction.done,
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
                style: theme.textTheme.titleSmall,
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
            BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
                CheckOutOneOneModel?>(
              selector: (state) => state.checkOutOneOneModelObj,
              builder: (context, checkOutOneOneModelObj) {
                return CustomDropDown(
                  hintText: "lbl_country".tr,
                  hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                  items: checkOutOneOneModelObj?.dropdownItemList ?? [],
                  onChanged: (value) {
                    context
                        .read<CheckOutOneOneBloc>()
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
  Widget _buildShippingMethodTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 13.h),
          child: Text(
            "lbl_shipping_method".tr,
            style: CustomTextStyles.titleMediumBlack900,
          ),
        ),
        SizedBox(height: 27.v),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState,
              CheckOutOneOneModel?>(
            selector: (state) => state.checkOutOneOneModelObj,
            builder: (context, checkOutOneOneModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 13.5.v),
                    child: SizedBox(
                      width: 310.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray10007,
                      ),
                    ),
                  );
                },
                itemCount:
                    checkOutOneOneModelObj?.deliveryoptionsItemList.length ?? 0,
                itemBuilder: (context, index) {
                  DeliveryoptionsItemModel model =
                      checkOutOneOneModelObj?.deliveryoptionsItemList[index] ??
                          DeliveryoptionsItemModel();
                  return DeliveryoptionsItemWidget(
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
            style: CustomTextStyles.titleMediumGray90003,
          ),
        ),
        SizedBox(height: 21.v),
        Container(
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.fillGray10006.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "msg_have_a_code_type".tr,
                  style: CustomTextStyles.bodySmallBluegray10006,
                ),
              ),
              Text(
                "lbl_validate".tr,
                style: CustomTextStyles.bodySmallBluegray500,
              ),
            ],
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
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(right: 34.h),
            child: BlocSelector<CheckOutOneOneBloc, CheckOutOneOneState, bool?>(
              selector: (state) => state.copyaddressdatafromshipping,
              builder: (context, copyaddressdatafromshipping) {
                return CustomCheckboxButton(
                  text: "msg_copy_address_data".tr,
                  value: copyaddressdatafromshipping,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    context
                        .read<CheckOutOneOneBloc>()
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
    );
  }
}
