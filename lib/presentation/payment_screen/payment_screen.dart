import '../payment_screen/widgets/userprofile2_item_widget.dart';
import 'bloc/payment_bloc.dart';
import 'models/payment_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => PaymentBloc(PaymentState(
        paymentModelObj: PaymentModel(),
      ))
        ..add(PaymentInitialEvent()),
      child: PaymentScreen(),
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
            padding: EdgeInsets.only(top: 36.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  _buildCardManagement(context),
                  SizedBox(height: 41.v),
                  _buildUserProfile(context),
                  SizedBox(height: 56.v),
                  _buildOrCheckOutWith(context),
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
        imagePath: ImageConstant.imgArrowLeftWhiteA700,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_payment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCardManagement(BuildContext context) {
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
              style: CustomTextStyles.titleMediumGray90009,
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
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 192.v,
      child: BlocSelector<PaymentBloc, PaymentState, PaymentModel?>(
        selector: (state) => state.paymentModelObj,
        builder: (context, paymentModelObj) {
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
            itemCount: paymentModelObj?.userprofile2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile2ItemModel model =
                  paymentModelObj?.userprofile2ItemList[index] ??
                      Userprofile2ItemModel();
              return Userprofile2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildOrCheckOutWith(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_or_check_out_with".tr,
            style: CustomTextStyles.bodySmallBluegray90004,
          ),
          SizedBox(height: 57.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 26.h,
            ),
            child: Row(
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
        ],
      ),
    );
  }
}
