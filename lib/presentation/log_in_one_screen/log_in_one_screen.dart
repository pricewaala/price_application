import 'bloc/log_in_one_bloc.dart';
import 'models/log_in_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class LogInOneScreen extends StatelessWidget {
  LogInOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInOneBloc>(
      create: (context) => LogInOneBloc(LogInOneState(
        logInOneModelObj: LogInOneModel(),
      ))
        ..add(LogInOneInitialEvent()),
      child: LogInOneScreen(),
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
                      style: CustomTextStyles.headlineSmallGray5006_1.copyWith(
                        height: 2.00,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 64.v),
                BlocSelector<LogInOneBloc, LogInOneState,
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
                      borderDecoration:
                          TextFormFieldStyleHelper.underLineBlueGray2,
                    );
                  },
                ),
                SizedBox(height: 42.v),
                BlocSelector<LogInOneBloc, LogInOneState,
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
                      borderDecoration:
                          TextFormFieldStyleHelper.underLineBlueGray2,
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
                  buttonStyle: CustomButtonStyles.fillGrayTL25,
                  buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
                ),
                SizedBox(height: 26.v),
                Text(
                  "lbl_or_log_in_with".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006_2,
                ),
                SizedBox(height: 21.v),
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
                          style: CustomTextStyles.bodyMediumGray5006,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "lbl_sign_up2".tr,
                          style: CustomTextStyles.bodyMediumGray5006.copyWith(
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
