import 'bloc/intro_three_one_bloc.dart';
import 'models/intro_three_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroThreeOneScreen extends StatelessWidget {
  const IntroThreeOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroThreeOneBloc>(
      create: (context) => IntroThreeOneBloc(IntroThreeOneState(
        introThreeOneModelObj: IntroThreeOneModel(),
      ))
        ..add(IntroThreeOneInitialEvent()),
      child: IntroThreeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroThreeOneBloc, IntroThreeOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 60.v),
                  Text(
                    "msg_explore_your_true".tr,
                    style: CustomTextStyles.titleLargeProductSansBlack900Bold,
                  ),
                  SizedBox(height: 17.v),
                  Text(
                    "msg_relax_and_let_us".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 37.v),
                  SizedBox(
                    height: 621.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        _buildShoppingNowSection(context),
                        _buildFrameSection(context),
                      ],
                    ),
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
  Widget _buildShoppingNowSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 65.h,
          vertical: 73.v,
        ),
        decoration: AppDecoration.fillGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.40167412,
              child: Container(
                height: 25.v,
                width: 237.h,
                decoration: BoxDecoration(
                  color: appTheme.gray9007e,
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 57.v),
            SizedBox(
              height: 6.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 8,
                  activeDotColor: appTheme.whiteA700,
                  dotHeight: 6.v,
                  dotWidth: 6.h,
                ),
              ),
            ),
            SizedBox(height: 27.v),
            CustomOutlinedButton(
              text: "lbl_shopping_now".tr,
              margin: EdgeInsets.only(
                left: 11.h,
                right: 24.h,
              ),
              buttonStyle: CustomButtonStyles.outlineWhiteA,
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 37.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Container(
            height: 266.v,
            width: 25.h,
            margin: EdgeInsets.only(
              top: 62.v,
              bottom: 38.v,
            ),
            decoration: AppDecoration.fillGray20001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFashionPng7178266x1,
              height: 266.v,
              width: 1.h,
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            height: 368.v,
            width: 262.h,
            margin: EdgeInsets.only(left: 31.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 368.v,
                    width: 261.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray20001,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPngegg1AutoX2,
                  height: 368.v,
                  width: 254.h,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
