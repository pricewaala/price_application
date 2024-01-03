import '../new_card_screen/widgets/creditcard_item_widget.dart';
import 'bloc/new_card_bloc.dart';
import 'models/creditcard_item_model.dart';
import 'models/new_card_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class NewCardScreen extends StatelessWidget {
  const NewCardScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NewCardBloc>(
      create: (context) => NewCardBloc(NewCardState(
        newCardModelObj: NewCardModel(),
      ))
        ..add(NewCardInitialEvent()),
      child: NewCardScreen(),
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
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildCardManagementRow(context),
                  SizedBox(height: 42.v),
                  _buildOrCheckOutWithStack(context),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
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
    );
  }

  /// Section Widget
  Widget _buildOrCheckOutWithColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 38.h,
          bottom: 29.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_or_check_out_with".tr,
              style: CustomTextStyles.bodySmallBluegray90004,
            ),
            SizedBox(height: 57.v),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildOrCheckOutWithStack(BuildContext context) {
    return SizedBox(
      height: 383.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildOrCheckOutWithColumn(context),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 383.v,
              child: BlocSelector<NewCardBloc, NewCardState, NewCardModel?>(
                selector: (state) => state.newCardModelObj,
                builder: (context, newCardModelObj) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 1.h,
                      );
                    },
                    itemCount: newCardModelObj?.creditcardItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      CreditcardItemModel model =
                          newCardModelObj?.creditcardItemList[index] ??
                              CreditcardItemModel();
                      return CreditcardItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
