import 'bloc/forgot_password_one_bloc.dart';
import 'models/forgot_password_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class ForgotPasswordOneScreen extends StatelessWidget {
  ForgotPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordOneBloc>(
      create: (context) => ForgotPasswordOneBloc(ForgotPasswordOneState(
        forgotPasswordOneModelObj: ForgotPasswordOneModel(),
      ))
        ..add(ForgotPasswordOneInitialEvent()),
      child: ForgotPasswordOneScreen(),
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
                    style: theme.textTheme.headlineSmall,
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
                    style: CustomTextStyles.bodyMediumProductSansLight.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(height: 51.v),
                BlocSelector<ForgotPasswordOneBloc, ForgotPasswordOneState,
                    TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "msg_enter_your_email".tr,
                      hintStyle:
                          CustomTextStyles.bodySmallProductSansLightOnPrimary,
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
                      borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                      filled: true,
                      fillColor: appTheme.whiteA700,
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
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.fromLTRB(33.h, 10.v, 306.h, 10.v),
      ),
    );
  }
}
