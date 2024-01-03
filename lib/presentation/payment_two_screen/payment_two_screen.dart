import '../payment_two_screen/widgets/userprofilelist1_item_widget.dart';
import 'bloc/payment_two_bloc.dart';
import 'models/payment_two_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class PaymentTwoScreen extends StatelessWidget {
  const PaymentTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentTwoBloc>(
      create: (context) => PaymentTwoBloc(PaymentTwoState(
        paymentTwoModelObj: PaymentTwoModel(),
      ))
        ..add(PaymentTwoInitialEvent()),
      child: PaymentTwoScreen(),
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
            padding: EdgeInsets.only(top: 32.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildCardManagementRow(context),
                  SizedBox(height: 41.v),
                  _buildUserProfileList(context),
                  SizedBox(height: 56.v),
                  _buildOrCheckOutWithColumn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_payment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCardManagementRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.h,
          right: 30.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_card_management".tr,
              style: CustomTextStyles.titleMedium18,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(
                "lbl_add_new".tr,
                style: CustomTextStyles.titleSmallProductSansRedA70003,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 192.v,
      child: BlocSelector<PaymentTwoBloc, PaymentTwoState, PaymentTwoModel?>(
        selector: (state) => state.paymentTwoModelObj,
        builder: (context, paymentTwoModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 14.h,
              );
            },
            itemCount: paymentTwoModelObj?.userprofilelist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofilelist1ItemModel model =
                  paymentTwoModelObj?.userprofilelist1ItemList[index] ??
                      Userprofilelist1ItemModel();
              return Userprofilelist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildOrCheckOutWithColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_or_check_out_with".tr,
            style: CustomTextStyles.bodySmallGray5006,
          ),
          SizedBox(height: 57.v),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 29.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMethodPaypal,
                  height: 34.v,
                  width: 49.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionGray9000733x49,
                  height: 33.v,
                  width: 49.h,
                  margin: EdgeInsets.only(left: 11.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseGray90007,
                  height: 34.v,
                  width: 49.h,
                  margin: EdgeInsets.only(left: 11.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionGray9000734x49,
                  height: 34.v,
                  width: 49.h,
                  margin: EdgeInsets.only(left: 11.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray90007,
                  height: 34.v,
                  width: 49.h,
                  margin: EdgeInsets.only(left: 11.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
