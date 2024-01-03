import 'bloc/order_info_two_two_bloc.dart';
import 'models/order_info_two_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class OrderInfoTwoTwoScreen extends StatelessWidget {
  const OrderInfoTwoTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderInfoTwoTwoBloc>(
      create: (context) => OrderInfoTwoTwoBloc(OrderInfoTwoTwoState(
        orderInfoTwoTwoModelObj: OrderInfoTwoTwoModel(),
      ))
        ..add(OrderInfoTwoTwoInitialEvent()),
      child: OrderInfoTwoTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderInfoTwoTwoBloc, OrderInfoTwoTwoState>(
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
                  _buildComponentFour(context),
                  SizedBox(height: 26.v),
                  _buildFrame1(context),
                  SizedBox(height: 41.v),
                  _buildFrame5(context),
                  SizedBox(height: 38.v),
                  CustomElevatedButton(
                    text: "msg_continue_shopping".tr,
                    margin: EdgeInsets.symmetric(horizontal: 10.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL25,
                    buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
                  ),
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
        text: "lbl_order_1524".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_your_order_is_on".tr,
                  style: CustomTextStyles.titleMediumNunitoGray90005,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_click_here_to_track".tr,
                  style: CustomTextStyles.labelMediumNunitoGray90005,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCar,
            height: 36.v,
            width: 57.h,
            margin: EdgeInsets.only(top: 9.v),
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
      decoration: AppDecoration.outlineBlack900332.copyWith(
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
              ik: "lbl_1524".tr,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildTrackingNumber(
              context,
              trackingNumber: "lbl_tracking_number".tr,
              ik: "lbl_ik287368838".tr,
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
      decoration: AppDecoration.outlineBlack900333.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_sportwear_set".tr,
                  style: CustomTextStyles.bodyMediumProductSansLightWhiteA700,
                ),
              ),
              Spacer(
                flex: 72,
              ),
              Text(
                "lbl_x1".tr,
                style: CustomTextStyles.bodyMediumRobotoWhiteA700,
              ),
              Spacer(
                flex: 27,
              ),
              Text(
                "lbl_80_002".tr,
                style: CustomTextStyles.bodyLargeProductSansMedium,
              ),
            ],
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 20.v,
            width: 311.h,
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
                          "lbl_cotton_t_shirt".tr,
                          style: CustomTextStyles
                              .bodyMediumProductSansLightWhiteA700,
                        ),
                      ),
                      Text(
                        "lbl_30_002".tr,
                        style: CustomTextStyles.bodyLargeProductSansMedium,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 91.h),
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
            zeroText: "lbl_110_00".tr,
          ),
          SizedBox(height: 6.v),
          _buildFrame(
            context,
            shippingText: "lbl_shipping".tr,
            zeroText: "lbl_0_00".tr,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.gray90007,
          ),
          SizedBox(height: 10.v),
          _buildFrame(
            context,
            shippingText: "lbl_total".tr,
            zeroText: "lbl_110_002".tr,
          ),
          SizedBox(height: 31.v),
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
          style: CustomTextStyles.bodySmallGray10001_1.copyWith(
            color: appTheme.gray10001,
          ),
        ),
        Text(
          ik,
          style: CustomTextStyles.bodySmallGray5006_1.copyWith(
            color: appTheme.gray5006,
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
