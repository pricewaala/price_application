import 'bloc/order_info_one_two_bloc.dart';
import 'models/order_info_one_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';
import 'package:price_s_application2/widgets/custom_outlined_button.dart';

class OrderInfoOneTwoScreen extends StatelessWidget {
  const OrderInfoOneTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderInfoOneTwoBloc>(
      create: (context) => OrderInfoOneTwoBloc(OrderInfoOneTwoState(
        orderInfoOneTwoModelObj: OrderInfoOneTwoModel(),
      ))
        ..add(OrderInfoOneTwoInitialEvent()),
      child: OrderInfoOneTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderInfoOneTwoBloc, OrderInfoOneTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray90007,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 32.v,
              ),
              child: Column(
                children: [
                  _buildComponentFive(context),
                  SizedBox(height: 26.v),
                  _buildFrame1(context),
                  SizedBox(height: 41.v),
                  _buildFrame5(context),
                  SizedBox(height: 40.v),
                  _buildReturnHome(context),
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
      leadingWidth: 67.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_order_1514".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_your_order_is_delivered".tr,
                  style: CustomTextStyles.titleMediumNunitoGray90007,
                ),
                SizedBox(height: 10.v),
                Text(
                  "msg_rate_product_to".tr,
                  style: CustomTextStyles.labelMediumNunitoGray90007,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOfferGray90007,
            height: 46.v,
            width: 51.h,
            margin: EdgeInsets.only(top: 6.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildTrackingNumber(
              context,
              trackingNumber: "lbl_order_number".tr,
              ik: "lbl_1514".tr,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildTrackingNumber(
              context,
              trackingNumber: "lbl_tracking_number".tr,
              ik: "lbl_ik9873623412".tr,
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildTrackingNumber(
              context,
              trackingNumber: "msg_delivery_address".tr,
              ik: "msg_sbi_building_software".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineWhiteA7001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_maxi_dress".tr,
                style: CustomTextStyles.bodyMediumProductSansLightWhiteA700,
              ),
              Spacer(
                flex: 76,
              ),
              Text(
                "lbl_x1".tr,
                style: CustomTextStyles.bodyMediumRobotoWhiteA700,
              ),
              Spacer(
                flex: 23,
              ),
              Text(
                "lbl_68_002".tr,
                style: CustomTextStyles.bodyLargeProductSansMedium,
              ),
            ],
          ),
          SizedBox(height: 17.v),
          SizedBox(
            height: 20.v,
            width: 310.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "lbl_linen_dress".tr,
                          style: CustomTextStyles
                              .bodyMediumProductSansLightWhiteA700,
                        ),
                      ),
                      Text(
                        "lbl_52_002".tr,
                        style: CustomTextStyles.bodyLargeProductSansMedium,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 89.h),
                    child: Text(
                      "lbl_x1".tr,
                      style: CustomTextStyles.bodyMediumRobotoWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          _buildFrame(
            context,
            shippingText: "lbl_sub_total2".tr,
            zeroText: "lbl_120_00".tr,
          ),
          SizedBox(height: 6.v),
          _buildFrame(
            context,
            shippingText: "lbl_shipping".tr,
            zeroText: "lbl_0_00".tr,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.whiteA700.withOpacity(0.2),
          ),
          SizedBox(height: 10.v),
          _buildFrame(
            context,
            shippingText: "lbl_total".tr,
            zeroText: "lbl_120_002".tr,
          ),
          SizedBox(height: 31.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReturnHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            height: 44.v,
            width: 168.h,
            text: "lbl_return_home".tr,
            buttonStyle: CustomButtonStyles.outlineBlueGrayTL221,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray200,
          ),
          CustomElevatedButton(
            height: 44.v,
            width: 119.h,
            text: "lbl_rate".tr,
            buttonStyle: CustomButtonStyles.fillGrayTL22,
            buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTrackingNumber(
    BuildContext context, {
    required String trackingNumber,
    required String ik,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          trackingNumber,
          style: CustomTextStyles.bodySmallGray5006_1.copyWith(
            color: appTheme.gray5006,
          ),
        ),
        Text(
          ik,
          style: CustomTextStyles.bodySmallWhiteA700.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String shippingText,
    required String zeroText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Text(
            shippingText,
            style:
                CustomTextStyles.bodyMediumProductSansLightWhiteA700.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            zeroText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
      ],
    );
  }
}
