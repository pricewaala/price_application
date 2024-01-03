import 'bloc/forgot_password_two_bloc.dart';
import 'models/forgot_password_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class ForgotPasswordTwoScreen extends StatelessWidget {
  ForgotPasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordTwoBloc>(
      create: (context) => ForgotPasswordTwoBloc(ForgotPasswordTwoState(
        forgotPasswordTwoModelObj: ForgotPasswordTwoModel(),
      ))
        ..add(ForgotPasswordTwoInitialEvent()),
      child: ForgotPasswordTwoScreen(),
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
            padding: EdgeInsets.symmetric(
              horizontal: 32.h,
              vertical: 34.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_forgot_password2".tr,
                    style: CustomTextStyles.headlineSmallGray5006_1,
                  ),
                ),
                SizedBox(height: 29.v),
                Container(
                  width: 305.h,
                  margin: EdgeInsets.only(right: 5.h),
                  child: Text(
                    "msg_enter_email_associated".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumProductSansLightGray5006
                        .copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(height: 51.v),
                BlocSelector<ForgotPasswordTwoBloc, ForgotPasswordTwoState,
                    TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "msg_enter_your_email".tr,
                      hintStyle:
                          CustomTextStyles.bodySmallProductSansLightGray10001,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 22.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillGray1,
                      filled: true,
                      fillColor: appTheme.gray90005,
                    );
                  },
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.fromLTRB(32.h, 10.v, 307.h, 10.v),
      ),
    );
  }
}
