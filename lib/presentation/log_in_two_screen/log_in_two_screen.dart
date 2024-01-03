import 'bloc/log_in_two_bloc.dart';
import 'models/log_in_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class LogInTwoScreen extends StatelessWidget {
  LogInTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInTwoBloc>(
      create: (context) => LogInTwoBloc(LogInTwoState(
        logInTwoModelObj: LogInTwoModel(),
      ))
        ..add(LogInTwoInitialEvent()),
      child: LogInTwoScreen(),
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
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 65.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 163.h,
                    child: Text(
                      "msg_log_into_your_account".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 2.00,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 64.v),
                BlocSelector<LogInTwoBloc, LogInTwoState,
                    TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "lbl_email_address".tr,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 42.v),
                BlocSelector<LogInTwoBloc, LogInTwoState,
                    TextEditingController?>(
                  selector: (state) => state.passwordController,
                  builder: (context, passwordController) {
                    return CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    );
                  },
                ),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_forgot_password".tr,
                    style: CustomTextStyles.bodySmallProductSansLightBlack900_2,
                  ),
                ),
                SizedBox(height: 39.v),
                CustomElevatedButton(
                  height: 51.v,
                  width: 147.h,
                  text: "lbl_log_in2".tr.toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillGray,
                ),
                SizedBox(height: 26.v),
                SizedBox(
                  height: 15.v,
                  width: 99.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 11.v,
                          width: 99.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 0.6,
                          child: Text(
                            "lbl_or_log_in_with".tr,
                            style: CustomTextStyles
                                .bodySmallProductSansLightBlack900_3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 21.v),
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
                Spacer(),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "msg_don_t_have_an_account".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_sign_up2".tr,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
