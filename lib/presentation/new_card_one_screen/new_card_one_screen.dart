import '../new_card_one_screen/widgets/creditcard2_item_widget.dart';
import 'bloc/new_card_one_bloc.dart';
import 'models/creditcard2_item_model.dart';
import 'models/new_card_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class NewCardOneScreen extends StatelessWidget {
  const NewCardOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NewCardOneBloc>(
      create: (context) => NewCardOneBloc(NewCardOneState(
        newCardOneModelObj: NewCardOneModel(),
      ))
        ..add(NewCardOneInitialEvent()),
      child: NewCardOneScreen(),
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
            padding: EdgeInsets.only(top: 34.v),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
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
    );
  }

  /// Section Widget
  Widget _buildOrCheckOutWithColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          bottom: 29.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_or_check_out_with".tr,
              style: CustomTextStyles.bodySmallGray5006,
            ),
            SizedBox(height: 57.v),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
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
              child: BlocSelector<NewCardOneBloc, NewCardOneState,
                  NewCardOneModel?>(
                selector: (state) => state.newCardOneModelObj,
                builder: (context, newCardOneModelObj) {
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
                    itemCount:
                        newCardOneModelObj?.creditcard2ItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      Creditcard2ItemModel model =
                          newCardOneModelObj?.creditcard2ItemList[index] ??
                              Creditcard2ItemModel();
                      return Creditcard2ItemWidget(
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
