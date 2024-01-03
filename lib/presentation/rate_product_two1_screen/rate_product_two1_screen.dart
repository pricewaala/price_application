import 'bloc/rate_product_two1_bloc.dart';
import 'models/rate_product_two1_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';
import 'package:price_s_application2/widgets/custom_text_form_field.dart';

class RateProductTwo1Screen extends StatelessWidget {
  const RateProductTwo1Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RateProductTwo1Bloc>(
      create: (context) => RateProductTwo1Bloc(RateProductTwo1State(
        rateProductTwo1ModelObj: RateProductTwo1Model(),
      ))
        ..add(RateProductTwo1InitialEvent()),
      child: RateProductTwo1Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90007,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              _buildRateProductRow(context),
              SizedBox(height: 36.v),
              _buildWriteAboutProductColumn(context),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: 64.v,
                      width: 69.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.outlineGray2001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserGray200,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      height: 64.v,
                      width: 69.h,
                      margin: EdgeInsets.only(left: 24.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.outlineGray2001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconsCameraLineGray200,
                        height: 33.adaptSize,
                        width: 33.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "lbl_submit_review".tr,
                buttonStyle: CustomButtonStyles.fillGrayTL25,
                buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
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
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_rate_product".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRateProductRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpGray90005,
            height: 21.v,
            width: 22.h,
            margin: EdgeInsets.only(
              left: 6.h,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 6.v,
              bottom: 2.v,
            ),
            child: Text(
              "msg_submit_your_review".tr,
              style: CustomTextStyles.labelLargeGray90005,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray90005,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteAboutProductColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        children: [
          CustomRatingBar(
            initialRating: 4,
            itemSize: 32,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: BlocSelector<RateProductTwo1Bloc, RateProductTwo1State,
                TextEditingController?>(
              selector: (state) => state.writeAboutProductController,
              builder: (context, writeAboutProductController) {
                return CustomTextFormField(
                  controller: writeAboutProductController,
                  hintText: "msg_would_you_like_to".tr,
                  hintStyle:
                      CustomTextStyles.bodySmallProductSansLightGray10001,
                  textInputAction: TextInputAction.done,
                  maxLines: 13,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 28.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
                  filled: true,
                  fillColor: appTheme.gray90005,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
