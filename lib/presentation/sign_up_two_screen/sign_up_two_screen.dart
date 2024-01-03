import 'bloc/sign_up_two_bloc.dart';
import 'models/sign_up_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpTwoBloc>(
      create: (context) => SignUpTwoBloc(SignUpTwoState(
        signUpTwoModelObj: SignUpTwoModel(),
      ))
        ..add(SignUpTwoInitialEvent()),
      child: SignUpTwoScreen(),
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 163.h,
                    child: Text(
                      "msg_create_your_account".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineSmallGray5006_1.copyWith(
                        height: 2.00,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35.v),
                _buildNameField(context),
                SizedBox(height: 42.v),
                _buildEmailField(context),
                SizedBox(height: 42.v),
                _buildPasswordField(context),
                SizedBox(height: 43.v),
                _buildConfirmPasswordField(context),
                SizedBox(height: 43.v),
                _buildSignupButton(context),
                SizedBox(height: 32.v),
                Text(
                  "lbl_or_sign_up_with".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006_2,
                ),
                SizedBox(height: 26.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineWhiteA,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserGray5006,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: CustomIconButton(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.outlineGrayTL21,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGrommetIconsGoogle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: CustomIconButton(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.outlineGrayTL21,
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgGrommetIconsFacebookOption,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_already_have_account".tr,
                      style: CustomTextStyles.bodyMediumGray5006,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "lbl_log_in".tr,
                        style: CustomTextStyles.bodyMediumGray5006.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return BlocSelector<SignUpTwoBloc, SignUpTwoState, TextEditingController?>(
      selector: (state) => state.nameFieldController,
      builder: (context, nameFieldController) {
        return CustomTextFormField(
          controller: nameFieldController,
          hintText: "lbl_enter_your_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return BlocSelector<SignUpTwoBloc, SignUpTwoState, TextEditingController?>(
      selector: (state) => state.emailFieldController,
      builder: (context, emailFieldController) {
        return CustomTextFormField(
          controller: emailFieldController,
          hintText: "lbl_email_address".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return BlocSelector<SignUpTwoBloc, SignUpTwoState, TextEditingController?>(
      selector: (state) => state.passwordFieldController,
      builder: (context, passwordFieldController) {
        return CustomTextFormField(
          controller: passwordFieldController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return BlocSelector<SignUpTwoBloc, SignUpTwoState, TextEditingController?>(
      selector: (state) => state.confirmPasswordFieldController,
      builder: (context, confirmPasswordFieldController) {
        return CustomTextFormField(
          controller: confirmPasswordFieldController,
          hintText: "msg_confirm_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
          borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
      height: 51.v,
      width: 147.h,
      text: "lbl_sign_up".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillGrayTL25,
      buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
    );
  }
}
