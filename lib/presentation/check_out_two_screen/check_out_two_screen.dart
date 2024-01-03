import '../check_out_two_screen/widgets/paymentmethod_item_widget.dart';
import '../check_out_two_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/check_out_two_bloc.dart';
import 'models/check_out_two_model.dart';
import 'models/paymentmethod_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_checkbox_button.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class CheckOutTwoScreen extends StatelessWidget {
  const CheckOutTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckOutTwoBloc>(
      create: (context) => CheckOutTwoBloc(CheckOutTwoState(
        checkOutTwoModelObj: CheckOutTwoModel(),
      ))
        ..add(CheckOutTwoInitialEvent()),
      child: CheckOutTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProcess,
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
                      style: CustomTextStyles.bodySmallProductSansLight11,
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
                      style: CustomTextStyles.headlineSmallOnPrimaryContainer,
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
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 32.h,
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

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return SizedBox(
      height: 64.v,
      child: BlocSelector<CheckOutTwoBloc, CheckOutTwoState, CheckOutTwoModel?>(
        selector: (state) => state.checkOutTwoModelObj,
        builder: (context, checkOutTwoModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 15.h,
              );
            },
            itemCount: checkOutTwoModelObj?.paymentmethodItemList.length ?? 0,
            itemBuilder: (context, index) {
              PaymentmethodItemModel model =
                  checkOutTwoModelObj?.paymentmethodItemList[index] ??
                      PaymentmethodItemModel();
              return PaymentmethodItemWidget(
                model,
              );
            },
          );
        },
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
                  style: CustomTextStyles.titleMediumBlack900,
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
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 192.v,
            child: BlocSelector<CheckOutTwoBloc, CheckOutTwoState,
                CheckOutTwoModel?>(
              selector: (state) => state.checkOutTwoModelObj,
              builder: (context, checkOutTwoModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 23.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 14.h,
                    );
                  },
                  itemCount:
                      checkOutTwoModelObj?.userprofile1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userprofile1ItemModel model =
                        checkOutTwoModelObj?.userprofile1ItemList[index] ??
                            Userprofile1ItemModel();
                    return Userprofile1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
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
            style: CustomTextStyles.bodySmallBluegray90004,
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
                    imagePath: ImageConstant.imgTelevisionWhiteA700,
                    height: 34.v,
                    width: 49.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionWhiteA70033x49,
                    height: 33.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseWhiteA700,
                    height: 34.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionWhiteA70034x49,
                    height: 34.v,
                    width: 49.h,
                    margin: EdgeInsets.only(left: 11.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlay,
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
      decoration: AppDecoration.outlineBlack9002.copyWith(
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
                  style: CustomTextStyles.bodyMediumBluegray40004,
                ),
                Text(
                  "lbl_110".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Divider(
            color: appTheme.gray20004,
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
                  style: CustomTextStyles.bodyMediumBluegray40004,
                ),
                Text(
                  "lbl_freeship".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          Divider(
            color: appTheme.gray20004,
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
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "lbl_110".tr,
                  style: CustomTextStyles.titleLargeProductSansBlack900,
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
              child: BlocSelector<CheckOutTwoBloc, CheckOutTwoState, bool?>(
                selector: (state) => state.iagreetoTermsandconditions,
                builder: (context, iagreetoTermsandconditions) {
                  return CustomCheckboxButton(
                    alignment: Alignment.centerLeft,
                    text: "msg_i_agree_to_terms".tr,
                    value: iagreetoTermsandconditions,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    textStyle:
                        CustomTextStyles.bodyLargeRalewayOnPrimaryContainer,
                    onChange: (value) {
                      context
                          .read<CheckOutTwoBloc>()
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
          ),
          SizedBox(height: 55.v),
        ],
      ),
    );
  }
}
