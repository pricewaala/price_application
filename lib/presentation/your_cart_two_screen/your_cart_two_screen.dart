import '../your_cart_two_screen/widgets/productlist2_item_widget.dart';
import 'bloc/your_cart_two_bloc.dart';
import 'models/productlist2_item_model.dart';
import 'models/your_cart_two_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class YourCartTwoScreen extends StatelessWidget {
  const YourCartTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<YourCartTwoBloc>(
      create: (context) => YourCartTwoBloc(YourCartTwoState(
        yourCartTwoModelObj: YourCartTwoModel(),
      ))
        ..add(YourCartTwoInitialEvent()),
      child: YourCartTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90007,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Column(
              children: [
                _buildProductList(context),
                SizedBox(height: 32.v),
                _buildCartSummary(context),
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
        imagePath: ImageConstant.imgArrowLeftGray90005,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_your_cart".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: BlocSelector<YourCartTwoBloc, YourCartTwoState, YourCartTwoModel?>(
        selector: (state) => state.yourCartTwoModelObj,
        builder: (context, yourCartTwoModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 25.v,
              );
            },
            itemCount: yourCartTwoModelObj?.productlist2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist2ItemModel model =
                  yourCartTwoModelObj?.productlist2ItemList[index] ??
                      Productlist2ItemModel();
              return Productlist2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCartSummary(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_product_price".tr,
                    style: CustomTextStyles.bodyMediumGray200,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_110".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Divider(
            color: appTheme.gray90007,
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 5.h,
            ),
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
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
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
          SizedBox(height: 29.v),
          CustomElevatedButton(
            text: "msg_proceed_to_checkout".tr,
            margin: EdgeInsets.only(
              left: 11.h,
              right: 5.h,
            ),
            buttonStyle: CustomButtonStyles.fillGrayTL25,
            buttonTextStyle: CustomTextStyles.titleMediumGray90005_1,
          ),
          SizedBox(height: 50.v),
        ],
      ),
    );
  }
}
