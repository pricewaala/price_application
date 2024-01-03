import 'bloc/check_out_three_two_bloc.dart';
import 'models/check_out_three_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class CheckOutThreeTwoScreen extends StatelessWidget {
  const CheckOutThreeTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutThreeTwoBloc>(
      create: (context) => CheckOutThreeTwoBloc(CheckOutThreeTwoState(
        checkOutThreeTwoModelObj: CheckOutThreeTwoModel(),
      ))
        ..add(CheckOutThreeTwoInitialEvent()),
      child: CheckOutThreeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckOutThreeTwoBloc, CheckOutThreeTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90005,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 18.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgProcessGray5006,
                    height: 22.v,
                    width: 266.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 45.v),
                  Text(
                    "lbl_order_completed".tr,
                    style: CustomTextStyles.headlineSmallWhiteA700,
                  ),
                  SizedBox(height: 81.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupGray5006,
                    height: 110.v,
                    width: 101.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 57.v),
                  Container(
                    width: 267.h,
                    margin: EdgeInsets.only(
                      left: 17.h,
                      right: 30.h,
                    ),
                    child: Text(
                      "msg_thank_you_for_your".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumGray5006.copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 51,
                  ),
                  CustomElevatedButton(
                    text: "msg_continue_shopping".tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL25,
                    buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
                  ),
                  Spacer(
                    flex: 48,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_check_out".tr,
      ),
    );
  }
}
