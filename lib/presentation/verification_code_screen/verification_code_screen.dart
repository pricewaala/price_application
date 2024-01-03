import 'bloc/verification_code_bloc.dart';
import 'models/verification_code_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_pin_code_text_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VerificationCodeBloc>(
      create: (context) => VerificationCodeBloc(VerificationCodeState(
        verificationCodeModelObj: VerificationCodeModel(),
      ))
        ..add(VerificationCodeInitialEvent()),
      child: VerificationCodeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 31.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "msg_verification_code".tr,
                  style: CustomTextStyles.headlineSmall_1,
                ),
              ),
              SizedBox(height: 21.v),
              Container(
                width: 295.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 22.h,
                ),
                child: Text(
                  "msg_please_enter_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumProductSansLight.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 55.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 29.h,
                  right: 28.h,
                ),
                child: BlocSelector<VerificationCodeBloc, VerificationCodeState,
                    TextEditingController?>(
                  selector: (state) => state.otpController,
                  builder: (context, otpController) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 49.v),
              Text(
                "lbl_resend_in_00_10".tr,
                style: CustomTextStyles.bodyMediumProductSansLightGray90009,
              ),
              SizedBox(height: 5.v),
            ],
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
