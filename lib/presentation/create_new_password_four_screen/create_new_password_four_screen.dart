import 'bloc/create_new_password_four_bloc.dart';
import 'models/create_new_password_four_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class CreateNewPasswordFourScreen extends StatelessWidget {
  CreateNewPasswordFourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateNewPasswordFourBloc>(
      create: (context) => CreateNewPasswordFourBloc(CreateNewPasswordFourState(
        createNewPasswordFourModelObj: CreateNewPasswordFourModel(),
      ))
        ..add(CreateNewPasswordFourInitialEvent()),
      child: CreateNewPasswordFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 777.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 112.h,
                          right: 112.h,
                          bottom: 253.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 42.h,
                          vertical: 12.v,
                        ),
                        decoration: AppDecoration.fillGray5006.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder21,
                        ),
                        child: Text(
                          "lbl_confirm".tr,
                          style: CustomTextStyles.titleMediumGray90005_1,
                        ),
                      ),
                    ),
                    _buildPasswordSection(context),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle4076,
                        height: 777.v,
                        width: 374.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    _buildPasswordChangedSection(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          top: 14.v,
          right: 13.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              height: 36.v,
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingIconbutton(
                imagePath: ImageConstant.imgArrowLeftWhiteA700,
                margin: EdgeInsets.only(
                  left: 35.h,
                  right: 304.h,
                ),
              ),
            ),
            SizedBox(height: 48.v),
            Text(
              "msg_create_new_password".tr,
              style: CustomTextStyles.headlineSmallGray5006,
            ),
            SizedBox(height: 19.v),
            Container(
              width: 262.h,
              margin: EdgeInsets.only(right: 64.h),
              child: Text(
                "msg_your_new_password".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumProductSansLightGray5006
                    .copyWith(
                  height: 1.71,
                ),
              ),
            ),
            SizedBox(height: 57.v),
            BlocBuilder<CreateNewPasswordFourBloc, CreateNewPasswordFourState>(
              builder: (context, state) {
                return CustomTextFormField(
                  controller: state.passwordController,
                  hintText: "lbl_password".tr,
                  hintStyle:
                      CustomTextStyles.bodySmallProductSansLightGray200Light,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                    onTap: () {
                      context.read<CreateNewPasswordFourBloc>().add(
                          ChangePasswordVisibilityEvent(
                              value: !state.isShowPassword));
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 19.v, 8.h, 7.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEyeGray5006,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 50.v,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: state.isShowPassword,
                  borderDecoration: TextFormFieldStyleHelper.underLineGray2,
                );
              },
            ),
            SizedBox(height: 18.v),
            Text(
              "msg_confirm_password2".tr,
              style: CustomTextStyles.bodySmallProductSansLightGray200_1,
            ),
            SizedBox(height: 5.v),
            BlocBuilder<CreateNewPasswordFourBloc, CreateNewPasswordFourState>(
              builder: (context, state) {
                return CustomTextFormField(
                  controller: state.confirmpasswordController,
                  hintText: "lbl_sunieneee".tr,
                  hintStyle: CustomTextStyles.bodyLargeGray5006,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                    onTap: () {
                      context.read<CreateNewPasswordFourBloc>().add(
                          ChangePasswordVisibilityEvent1(
                              value: !state.isShowPassword1));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 30.h,
                        right: 8.h,
                        bottom: 7.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEyeGray500624x24,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 31.v,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: state.isShowPassword1,
                  contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                  borderDecoration: TextFormFieldStyleHelper.underLineGray2,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordChangedSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 102.h,
            child: Divider(
              color: appTheme.gray20004,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 27.v,
            ),
            decoration: AppDecoration.outlineBlack9007.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL41,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 21.v,
                  ),
                  decoration: AppDecoration.fillGray10001.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder50,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgProfileGray90007,
                    height: 57.v,
                    width: 46.h,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "msg_your_password_has".tr,
                  style: CustomTextStyles.titleMediumProductSansMediumGray5006,
                ),
                SizedBox(height: 13.v),
                Text(
                  "msg_welcome_back_discover".tr,
                  style: CustomTextStyles.labelLargeGray5006,
                ),
                SizedBox(height: 19.v),
                CustomElevatedButton(
                  height: 60.v,
                  text: "lbl_browse_home".tr,
                  buttonStyle: CustomButtonStyles.fillGrayTL30,
                  buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
                ),
                SizedBox(height: 55.v),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
