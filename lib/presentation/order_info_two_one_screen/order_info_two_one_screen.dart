import 'bloc/order_info_two_one_bloc.dart';
import 'models/order_info_two_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class OrderInfoTwoOneScreen extends StatelessWidget {
  const OrderInfoTwoOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderInfoTwoOneBloc>(
      create: (context) => OrderInfoTwoOneBloc(OrderInfoTwoOneState(
        orderInfoTwoOneModelObj: OrderInfoTwoOneModel(),
      ))
        ..add(OrderInfoTwoOneInitialEvent()),
      child: OrderInfoTwoOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderInfoTwoOneBloc, OrderInfoTwoOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray5007,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 26.v,
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
      decoration: AppDecoration.fillGray70001.copyWith(
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
                  style: CustomTextStyles.titleMediumNunito,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_click_here_to_track".tr,
                  style: CustomTextStyles.labelMediumNunito,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
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
      decoration: AppDecoration.outlineBlack90033.copyWith(
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
              trackingNumberText: "lbl_order_number".tr,
              ikText: "lbl_1524".tr,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildTrackingNumber(
              context,
              trackingNumberText: "lbl_tracking_number".tr,
              ikText: "lbl_ik287368838".tr,
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: _buildTrackingNumber(
              context,
              trackingNumberText: "msg_delivery_address".tr,
              ikText: "msg_sbi_building_software".tr,
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
      decoration: AppDecoration.outlineBlack900331.copyWith(
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
                  style: CustomTextStyles.bodyMediumProductSansLight,
                ),
              ),
              Spacer(
                flex: 72,
              ),
              Text(
                "lbl_x1".tr,
                style: CustomTextStyles.bodyMediumRoboto,
              ),
              Spacer(
                flex: 27,
              ),
              Text(
                "lbl_80_002".tr,
                style: CustomTextStyles.bodyLargeProductSansMediumBlack900,
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
                          style: CustomTextStyles.bodyMediumProductSansLight,
                        ),
                      ),
                      Text(
                        "lbl_30_002".tr,
                        style:
                            CustomTextStyles.bodyLargeProductSansMediumBlack900,
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
                      style: CustomTextStyles.bodyMediumRoboto,
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
            color: appTheme.black900.withOpacity(0.2),
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
    required String trackingNumberText,
    required String ikText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          trackingNumberText,
          style: CustomTextStyles.bodySmallGray90009_2.copyWith(
            color: appTheme.gray90009.withOpacity(0.5),
          ),
        ),
        Text(
          ikText,
          style: CustomTextStyles.bodySmallGray90007.copyWith(
            color: appTheme.gray90007,
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
            style: CustomTextStyles.bodyMediumProductSansLight.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            zeroText,
            style: CustomTextStyles.titleMediumBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
