import 'bloc/create_new_password_three_bloc.dart';
import 'models/create_new_password_three_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class CreateNewPasswordThreeScreen extends StatelessWidget {
  CreateNewPasswordThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateNewPasswordThreeBloc>(
      create: (context) =>
          CreateNewPasswordThreeBloc(CreateNewPasswordThreeState(
        createNewPasswordThreeModelObj: CreateNewPasswordThreeModel(),
      ))
            ..add(CreateNewPasswordThreeInitialEvent()),
      child: CreateNewPasswordThreeScreen(),
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
              horizontal: 13.h,
              vertical: 38.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "msg_create_new_password".tr,
                    style: CustomTextStyles.headlineSmallGray5006,
                  ),
                ),
                SizedBox(height: 19.v),
                Container(
                  width: 262.h,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    right: 64.h,
                  ),
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
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: BlocBuilder<CreateNewPasswordThreeBloc,
                      CreateNewPasswordThreeState>(
                    builder: (context, state) {
                      return CustomTextFormField(
                        controller: state.passwordController,
                        hintText: "lbl_password".tr,
                        hintStyle: CustomTextStyles
                            .bodySmallProductSansLightGray200Light,
                        textInputType: TextInputType.visiblePassword,
                        alignment: Alignment.centerRight,
                        suffix: InkWell(
                          onTap: () {
                            context.read<CreateNewPasswordThreeBloc>().add(
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
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray2,
                      );
                    },
                  ),
                ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "msg_confirm_password2".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: BlocBuilder<CreateNewPasswordThreeBloc,
                      CreateNewPasswordThreeState>(
                    builder: (context, state) {
                      return CustomTextFormField(
                        controller: state.confirmpasswordController,
                        hintText: "lbl_sunieneee".tr,
                        hintStyle: CustomTextStyles.bodyLargeGray5006,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        alignment: Alignment.centerRight,
                        suffix: InkWell(
                          onTap: () {
                            context.read<CreateNewPasswordThreeBloc>().add(
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
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray2,
                      );
                    },
                  ),
                ),
                Spacer(
                  flex: 33,
                ),
                CustomElevatedButton(
                  height: 46.v,
                  width: 150.h,
                  text: "lbl_confirm".tr,
                  buttonStyle: CustomButtonStyles.fillGrayTL25,
                  buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
                  alignment: Alignment.center,
                ),
                Spacer(
                  flex: 66,
                ),
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
        margin: EdgeInsets.fromLTRB(35.h, 10.v, 304.h, 10.v),
      ),
    );
  }
}
