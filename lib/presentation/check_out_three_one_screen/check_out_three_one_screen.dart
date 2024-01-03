import 'bloc/check_out_three_one_bloc.dart';
import 'models/check_out_three_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class CheckOutThreeOneScreen extends StatelessWidget {
  const CheckOutThreeOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutThreeOneBloc>(
      create: (context) => CheckOutThreeOneBloc(CheckOutThreeOneState(
        checkOutThreeOneModelObj: CheckOutThreeOneModel(),
      ))
        ..add(CheckOutThreeOneInitialEvent()),
      child: CheckOutThreeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckOutThreeOneBloc, CheckOutThreeOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgProcessGray90010,
                    height: 22.v,
                    width: 266.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 45.v),
                  Text(
                    "lbl_order_completed".tr,
                    style: CustomTextStyles.headlineSmallBluegray90004,
                  ),
                  SizedBox(height: 81.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupBlueGray90004,
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
                      style: CustomTextStyles.bodyMediumBluegray90004.copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  CustomElevatedButton(
                    text: "msg_continue_shopping".tr,
                  ),
                  Spacer(
                    flex: 49,
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
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "lbl_check_out".tr,
      ),
    );
  }
}
