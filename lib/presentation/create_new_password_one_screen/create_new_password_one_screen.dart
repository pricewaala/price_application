import 'bloc/create_new_password_one_bloc.dart';
import 'models/create_new_password_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/core/utils/validation_functions.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class CreateNewPasswordOneScreen extends StatelessWidget {
  CreateNewPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateNewPasswordOneBloc>(
      create: (context) => CreateNewPasswordOneBloc(CreateNewPasswordOneState(
        createNewPasswordOneModelObj: CreateNewPasswordOneModel(),
      ))
        ..add(CreateNewPasswordOneInitialEvent()),
      child: CreateNewPasswordOneScreen(),
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
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "msg_create_new_password".tr,
                      style: CustomTextStyles.headlineSmallGray5006,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 262.h,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      right: 45.h,
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
                ),
                SizedBox(height: 80.v),
                BlocSelector<CreateNewPasswordOneBloc,
                    CreateNewPasswordOneState, TextEditingController?>(
                  selector: (state) => state.newpasswordController,
                  builder: (context, newpasswordController) {
                    return CustomTextFormField(
                      controller: newpasswordController,
                      hintText: "lbl_new_password".tr,
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
                SizedBox(height: 42.v),
                BlocSelector<CreateNewPasswordOneBloc,
                    CreateNewPasswordOneState, TextEditingController?>(
                  selector: (state) => state.confirmpasswordController,
                  builder: (context, confirmpasswordController) {
                    return CustomTextFormField(
                      controller: confirmpasswordController,
                      hintText: "msg_confirm_password2".tr,
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
                Spacer(
                  flex: 32,
                ),
                CustomElevatedButton(
                  height: 46.v,
                  width: 150.h,
                  text: "lbl_confirm".tr,
                  buttonStyle: CustomButtonStyles.fillGrayTL231,
                  buttonTextStyle: CustomTextStyles.titleMediumBluegray200,
                ),
                Spacer(
                  flex: 67,
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
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.fromLTRB(35.h, 10.v, 304.h, 10.v),
      ),
    );
  }
}
