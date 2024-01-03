import 'bloc/profile_setting_one_bloc.dart';
import 'models/profile_setting_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class ProfileSettingOneScreen extends StatelessWidget {
  ProfileSettingOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSettingOneBloc>(
      create: (context) => ProfileSettingOneBloc(ProfileSettingOneState(
        profileSettingOneModelObj: ProfileSettingOneModel(),
      ))
        ..add(ProfileSettingOneInitialEvent()),
      child: ProfileSettingOneScreen(),
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                right: 30.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 108.v,
                    width: 103.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAvatar,
                          height: 96.adaptSize,
                          width: 96.adaptSize,
                          alignment: Alignment.topLeft,
                        ),
                        CustomIconButton(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCameraGray80001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 91.v),
                  _buildFrame(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_email".tr,
                      style: CustomTextStyles.bodyMediumGray200,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildEmailEditText(context),
                  SizedBox(height: 26.v),
                  _buildFrame1(context),
                  SizedBox(height: 120.v),
                  _buildSaveChangeButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_profile_setting".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return BlocSelector<ProfileSettingOneBloc, ProfileSettingOneState,
        TextEditingController?>(
      selector: (state) => state.firstNameEditTextController,
      builder: (context, firstNameEditTextController) {
        return CustomTextFormField(
          width: 176.h,
          controller: firstNameEditTextController,
          hintText: "lbl_sunie".tr,
          hintStyle: CustomTextStyles.bodyLargeProductSansMediumGray5006,
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray3,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return BlocSelector<ProfileSettingOneBloc, ProfileSettingOneState,
        TextEditingController?>(
      selector: (state) => state.lastNameEditTextController,
      builder: (context, lastNameEditTextController) {
        return CustomTextFormField(
          width: 123.h,
          controller: lastNameEditTextController,
          hintText: "lbl_pham".tr,
          hintStyle: CustomTextStyles.bodyLargeProductSansMediumGray5006,
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray3,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_first_name2".tr,
              style: CustomTextStyles.bodyMediumGray200,
            ),
            SizedBox(height: 10.v),
            _buildFirstNameEditText(context),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_last_name2".tr,
              style: CustomTextStyles.bodyMediumGray200,
            ),
            SizedBox(height: 10.v),
            _buildLastNameEditText(context),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<ProfileSettingOneBloc, ProfileSettingOneState,
        TextEditingController?>(
      selector: (state) => state.emailEditTextController,
      builder: (context, emailEditTextController) {
        return CustomTextFormField(
          controller: emailEditTextController,
          hintText: "msg_sunieux_gmail_com".tr,
          hintStyle: CustomTextStyles.bodyLargeProductSansMediumGray5006,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray3,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneEditText(BuildContext context) {
    return BlocSelector<ProfileSettingOneBloc, ProfileSettingOneState,
        TextEditingController?>(
      selector: (state) => state.phoneEditTextController,
      builder: (context, phoneEditTextController) {
        return CustomTextFormField(
          width: 77.h,
          controller: phoneEditTextController,
          hintText: "lbl_female".tr,
          hintStyle: CustomTextStyles.bodyLargeProductSansMediumGray5006,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray3,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_gender".tr,
              style: CustomTextStyles.bodyMediumGray200,
            ),
            SizedBox(height: 10.v),
            _buildPhoneEditText(context),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_phone".tr,
                  style: CustomTextStyles.bodyMediumGray200,
                ),
                SizedBox(height: 10.v),
                Text(
                  "lbl_1_23456789".tr,
                  style: CustomTextStyles.bodyLargeProductSansMediumGray5006,
                ),
                SizedBox(height: 2.v),
                Divider(
                  color: appTheme.blueGray40001,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSaveChangeButton(BuildContext context) {
    return CustomElevatedButton(
      width: 203.h,
      text: "lbl_save_change".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL25,
      buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
    );
  }
}
