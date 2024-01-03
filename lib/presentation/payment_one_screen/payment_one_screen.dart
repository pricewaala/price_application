import '../payment_one_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/payment_one_bloc.dart';
import 'models/payment_one_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class PaymentOneScreen extends StatelessWidget {
  const PaymentOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentOneBloc>(
      create: (context) => PaymentOneBloc(PaymentOneState(
        paymentOneModelObj: PaymentOneModel(),
      ))
        ..add(PaymentOneInitialEvent()),
      child: PaymentOneScreen(),
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
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 192.v,
      child: BlocSelector<PaymentOneBloc, PaymentOneState, PaymentOneModel?>(
        selector: (state) => state.paymentOneModelObj,
        builder: (context, paymentOneModelObj) {
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
            itemCount: paymentOneModelObj?.userprofilelistItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  paymentOneModelObj?.userprofilelistItemList[index] ??
                      UserprofilelistItemModel();
              return UserprofilelistItemWidget(
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
