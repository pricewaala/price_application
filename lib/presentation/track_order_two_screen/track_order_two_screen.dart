import 'bloc/track_order_two_bloc.dart';
import 'models/track_order_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';

class TrackOrderTwoScreen extends StatelessWidget {
  const TrackOrderTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TrackOrderTwoBloc>(
      create: (context) => TrackOrderTwoBloc(TrackOrderTwoState(
        trackOrderTwoModelObj: TrackOrderTwoModel(),
      ))
        ..add(TrackOrderTwoInitialEvent()),
      child: TrackOrderTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrackOrderTwoBloc, TrackOrderTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90005,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 35.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_delivered_on".tr,
                            style: CustomTextStyles.bodySmallGray90005_1,
                          ),
                          TextSpan(
                            text: "lbl_15_05_21".tr,
                            style: CustomTextStyles.bodySmallGray10001_2,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "msg_tracking_number2".tr,
                            style: CustomTextStyles.bodySmallBluegray200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_ik287368838".tr,
                            style: CustomTextStyles.bodyMediumGray10001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 42.v),
                  _buildTrackingInfo(context),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildCheckmark1(context),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildCheckmark2(context),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: _buildCheckmark3(
                      context,
                      messageText: "msg_parcel_is_in_transit".tr,
                      monthText: "lbl_13_may_07_00".tr,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildSenderInfo(context),
                  SizedBox(height: 6.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                    decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  _buildSenderStatus(context),
                  SizedBox(height: 58.v),
                  _buildComponentSix(context),
                  SizedBox(height: 5.v),
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
      leadingWidth: 69.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_track_order".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTrackingInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlineGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 11.adaptSize,
              width: 11.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray10001,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "msg_parcel_is_successfully".tr,
              style: CustomTextStyles.bodySmallGray10001_3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Text(
              "lbl_15_may_10_20".tr,
              style: CustomTextStyles.bodySmallBluegray200,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmark1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray10001,
                width: 1.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 17.adaptSize,
              width: 17.adaptSize,
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.outlineGray10001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray10001,
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray10001,
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 2.v,
            ),
            child: Text(
              "msg_parcel_is_out_for".tr,
              style: CustomTextStyles.bodySmallGray10001,
            ),
          ),
          Spacer(),
          Text(
            "lbl_14_may_08_00".tr,
            style: CustomTextStyles.bodySmallBluegray200,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmark2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 17.adaptSize,
            width: 17.adaptSize,
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlineGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkGray10001,
              height: 11.adaptSize,
              width: 11.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "msg_parcel_is_received".tr,
              style: CustomTextStyles.bodySmallGray10001,
            ),
          ),
          Text(
            "lbl_13_may_17_25".tr,
            style: CustomTextStyles.bodySmallBluegray200,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSenderInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(left: 7.h),
            decoration: BoxDecoration(
              color: appTheme.gray10001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildCheckmark3(
              context,
              messageText: "msg_sender_has_shipped".tr,
              monthText: "lbl_12_may_14_25".tr,
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(left: 7.h),
            decoration: BoxDecoration(
              color: appTheme.gray10001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSenderStatus(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.adaptSize,
            width: 4.adaptSize,
            margin: EdgeInsets.only(left: 7.h),
            decoration: BoxDecoration(
              color: appTheme.gray10001,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 17.adaptSize,
                width: 17.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.outlineGray10001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkGray10001,
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "msg_sender_is_preparing".tr,
                  style: CustomTextStyles.bodySmallGray10001,
                ),
              ),
              Text(
                "lbl_12_may_10_01".tr,
                style: CustomTextStyles.bodySmallBluegray200,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentSix(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray80005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 49.adaptSize,
            width: 49.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSignalAmber30001,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 43.v,
                    width: 49.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignalAmber3000115x15,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          alignment: Alignment.topRight,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignalAmber300,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          alignment: Alignment.topLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUpWhiteA700,
                          height: 31.v,
                          width: 22.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 11.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_don_t_forget_to".tr,
                    style: CustomTextStyles.labelLargeProductSansWhiteA700,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_rate_product_to".tr,
                    style:
                        CustomTextStyles.bodySmallProductSansLightBluegray200,
                  ),
                ),
                SizedBox(height: 4.v),
                CustomRatingBar(
                  initialRating: 0,
                  itemSize: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCheckmark3(
    BuildContext context, {
    required String messageText,
    required String monthText,
  }) {
    return Row(
      children: [
        Container(
          height: 17.adaptSize,
          width: 17.adaptSize,
          padding: EdgeInsets.all(2.h),
          decoration: AppDecoration.outlineGray10001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckmarkGray10001,
            height: 11.adaptSize,
            width: 11.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 2.v,
          ),
          child: Text(
            messageText,
            style: CustomTextStyles.bodySmallGray10001.copyWith(
              color: appTheme.gray10001,
            ),
          ),
        ),
        Spacer(),
        Text(
          monthText,
          style: CustomTextStyles.bodySmallBluegray200.copyWith(
            color: appTheme.blueGray200,
          ),
        ),
      ],
    );
  }
}
