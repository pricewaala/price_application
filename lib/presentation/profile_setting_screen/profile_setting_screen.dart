import 'bloc/profile_setting_bloc.dart';
import 'models/profile_setting_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSettingBloc>(
      create: (context) => ProfileSettingBloc(ProfileSettingState(
        profileSettingModelObj: ProfileSettingModel(),
      ))
        ..add(ProfileSettingInitialEvent()),
      child: ProfileSettingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30.v),
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
                        CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          alignment: Alignment.bottomRight,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 91.v),
                  _buildChangeAvatar(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_email".tr,
                      style: CustomTextStyles.bodyMediumBluegray20001,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_sunieux_gmail_com".tr,
                      style:
                          CustomTextStyles.bodyLargeProductSansMediumGray80007,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Divider(
                    color: appTheme.blueGray10003,
                  ),
                  SizedBox(height: 26.v),
                  _buildProfileFields(context),
                  SizedBox(height: 120.v),
                  CustomElevatedButton(
                    width: 203.h,
                    text: "lbl_save_change".tr,
                  ),
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
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_profile_setting".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildChangeAvatar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_first_name2".tr,
              style: CustomTextStyles.bodyMediumBluegray20001,
            ),
            SizedBox(height: 10.v),
            BlocSelector<ProfileSettingBloc, ProfileSettingState,
                TextEditingController?>(
              selector: (state) => state.firstNameController,
              builder: (context, firstNameController) {
                return CustomTextFormField(
                  width: 176.h,
                  controller: firstNameController,
                  hintText: "lbl_sunie".tr,
                  hintStyle:
                      CustomTextStyles.bodyLargeProductSansMediumGray80007,
                );
              },
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_last_name2".tr,
              style: CustomTextStyles.bodyMediumBluegray20001,
            ),
            SizedBox(height: 10.v),
            Text(
              "lbl_pham".tr,
              style: CustomTextStyles.bodyLargeProductSansMediumGray80007,
            ),
            SizedBox(height: 3.v),
            SizedBox(
              width: 123.h,
              child: Divider(
                color: appTheme.blueGray10003,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileFields(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_gender".tr,
              style: CustomTextStyles.bodyMediumBluegray20001,
            ),
            SizedBox(height: 10.v),
            BlocSelector<ProfileSettingBloc, ProfileSettingState,
                TextEditingController?>(
              selector: (state) => state.gendervalueController,
              builder: (context, gendervalueController) {
                return CustomTextFormField(
                  width: 77.h,
                  controller: gendervalueController,
                  hintText: "lbl_female".tr,
                  hintStyle:
                      CustomTextStyles.bodyLargeProductSansMediumGray80007,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_phone".tr,
                      style: CustomTextStyles.bodyMediumBluegray20001,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "lbl_1_23456789".tr,
                      style:
                          CustomTextStyles.bodyLargeProductSansMediumGray80007,
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Divider(
                  color: appTheme.blueGray10003,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
