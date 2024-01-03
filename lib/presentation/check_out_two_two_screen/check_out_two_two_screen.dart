import '../check_out_two_two_screen/widgets/userprofile14_item_widget.dart';
import 'bloc/check_out_two_two_bloc.dart';
import 'models/check_out_two_two_model.dart';
import 'models/userprofile14_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_checkbox_button.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class CheckOutTwoTwoScreen extends StatelessWidget {
  const CheckOutTwoTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutTwoTwoBloc>(
      create: (context) => CheckOutTwoTwoBloc(CheckOutTwoTwoState(
        checkOutTwoTwoModelObj: CheckOutTwoTwoModel(),
      ))
        ..add(CheckOutTwoTwoInitialEvent()),
      child: CheckOutTwoTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 18.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProcessBlueGray4000122x266,
                  height: 22.v,
                  width: 266.h,
                ),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 34.h),
                    child: Text(
                      "lbl_step_2".tr,
                      style:
                          CustomTextStyles.bodySmallProductSansLightWhiteA700,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 34.h),
                    child: Text(
                      "lbl_payment".tr,
                      style: CustomTextStyles.headlineSmallWhiteA700,
                    ),
                  ),
                ),
                SizedBox(height: 35.v),
                _buildPaymentMethod(context),
                SizedBox(height: 51.v),
                _buildChooseYourCard(context),
                SizedBox(height: 42.v),
                _buildOrCheckOutWith(context),
                SizedBox(height: 60.v),
                _buildFrame(context),
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
        text: "lbl_check_out".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlack9009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  imagePath: ImageConstant.imgProfileGray9000722x36,
                  height: 22.v,
                  width: 36.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_cash".tr,
                    style: CustomTextStyles.bodySmallPoppinsGray200_1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.h),
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlack90010.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionGray90007,
                  height: 22.v,
                  width: 35.h,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_credit_card".tr,
                    style: CustomTextStyles.bodySmallPoppinsGray90007,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 64.v,
            width: 94.h,
            margin: EdgeInsets.only(left: 15.h),
            padding: EdgeInsets.all(28.h),
            decoration: AppDecoration.outlineBlack9009.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsGray200,
              height: 8.v,
              width: 36.h,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseYourCard(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "msg_choose_your_card".tr,
                  style: CustomTextStyles.titleMediumGray5006,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text(
                  "lbl_add_new".tr,
                  style: CustomTextStyles.bodySmallPoppinsRedA70001,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 31.v),
        Padding(
          padding: EdgeInsets.only(left: 23.h),
          child: BlocBuilder<CheckOutTwoTwoBloc, CheckOutTwoTwoState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 192.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    state.sliderIndex = index;
                  },
                ),
                itemCount: state
                        .checkOutTwoTwoModelObj?.userprofile14ItemList.length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  Userprofile14ItemModel model = state.checkOutTwoTwoModelObj
                          ?.userprofile14ItemList[index] ??
                      Userprofile14ItemModel();
                  return Userprofile14ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOrCheckOutWith(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_or_check_out_with".tr,
            style: CustomTextStyles.bodySmallGray5006,
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionBlack900,
                    height: 34.v,
                    width: 49.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionBlack90033x49,
                    height: 33.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseBlack900,
                    height: 34.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionBlack90034x49,
                    height: 34.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgInstagram,
                    height: 34.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 11.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_product_price".tr,
                  style: CustomTextStyles.bodyMediumGray200,
                ),
                Text(
                  "lbl_110".tr,
                  style: CustomTextStyles.bodyMediumWhiteA700,
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Divider(
            color: appTheme.gray90007,
            indent: 6.h,
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_shipping".tr,
                  style: CustomTextStyles.bodyMediumGray200,
                ),
                Text(
                  "lbl_freeship".tr,
                  style: CustomTextStyles.bodyMediumWhiteA700,
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          Divider(
            color: appTheme.gray90007,
            indent: 6.h,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    "lbl_subtotal".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ),
                Text(
                  "lbl_110".tr,
                  style: CustomTextStyles.titleLargeProductSans,
                ),
              ],
            ),
          ),
          SizedBox(height: 48.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 55.h,
              ),
              child:
                  BlocSelector<CheckOutTwoTwoBloc, CheckOutTwoTwoState, bool?>(
                selector: (state) => state.iagreetoTermsandconditions,
                builder: (context, iagreetoTermsandconditions) {
                  return CustomCheckboxButton(
                    alignment: Alignment.centerLeft,
                    text: "msg_i_agree_to_terms".tr,
                    value: iagreetoTermsandconditions,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    textStyle: CustomTextStyles.bodyLargeRalewayGray5006,
                    onChange: (value) {
                      context
                          .read<CheckOutTwoTwoBloc>()
                          .add(ChangeCheckBoxEvent(value: value));
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 71.v),
          CustomElevatedButton(
            text: "lbl_place_my_order".tr,
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            buttonStyle: CustomButtonStyles.fillGrayTL25,
            buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
          ),
          SizedBox(height: 55.v),
        ],
      ),
    );
  }
}
