import 'bloc/sign_up_one_bloc.dart';
import 'models/sign_up_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpOneBloc>(
      create: (context) => SignUpOneBloc(SignUpOneState(
        signUpOneModelObj: SignUpOneModel(),
      ))
        ..add(SignUpOneInitialEvent()),
      child: SignUpOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 2.00,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35.v),
                _buildName(context),
                SizedBox(height: 42.v),
                _buildEmail(context),
                SizedBox(height: 42.v),
                _buildPassword(context),
                SizedBox(height: 43.v),
                _buildConfirmpassword(context),
                SizedBox(height: 43.v),
                _buildSIGNUP(context),
                SizedBox(height: 32.v),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "lbl_or_sign_up_with".tr,
                    style: CustomTextStyles.bodySmallProductSansLightBlack900_3,
                  ),
                ),
                SizedBox(height: 1.v),
                Container(
                  height: 11.v,
                  width: 99.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
                SizedBox(height: 13.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgButtonSocmedApple,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: CustomIconButton(
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.outlineGray,
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
                        decoration: IconButtonStyleHelper.outlineGray,
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
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "lbl_log_in".tr,
                        style: theme.textTheme.bodyMedium!.copyWith(
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
  Widget _buildName(BuildContext context) {
    return BlocSelector<SignUpOneBloc, SignUpOneState, TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_enter_your_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUpOneBloc, SignUpOneState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email_address".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<SignUpOneBloc, SignUpOneState, TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return BlocSelector<SignUpOneBloc, SignUpOneState, TextEditingController?>(
      selector: (state) => state.confirmpasswordController,
      builder: (context, confirmpasswordController) {
        return CustomTextFormField(
          controller: confirmpasswordController,
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
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSIGNUP(BuildContext context) {
    return CustomElevatedButton(
      height: 51.v,
      width: 147.h,
      text: "lbl_sign_up".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }
}
