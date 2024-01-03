import '../your_cart_one_screen/widgets/productlist1_item_widget.dart';
import 'bloc/your_cart_one_bloc.dart';
import 'models/productlist1_item_model.dart';
import 'models/your_cart_one_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_elevated_button.dart';

class YourCartOneScreen extends StatelessWidget {
  const YourCartOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<YourCartOneBloc>(
      create: (context) => YourCartOneBloc(YourCartOneState(
        yourCartOneModelObj: YourCartOneModel(),
      ))
        ..add(YourCartOneInitialEvent()),
      child: YourCartOneScreen(),
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
            padding: EdgeInsets.only(top: 14.v),
            child: Column(
              children: [
                _buildProductList(context),
                SizedBox(height: 32.v),
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
        text: "lbl_your_cart".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: BlocSelector<YourCartOneBloc, YourCartOneState, YourCartOneModel?>(
        selector: (state) => state.yourCartOneModelObj,
        builder: (context, yourCartOneModelObj) {
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
            itemCount: yourCartOneModelObj?.productlist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist1ItemModel model =
                  yourCartOneModelObj?.productlist1ItemList[index] ??
                      Productlist1ItemModel();
              return Productlist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
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
                    style: CustomTextStyles.bodyMediumBluegray40004,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_110".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Divider(
            color: appTheme.gray20004,
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
          SizedBox(height: 29.v),
          CustomElevatedButton(
            text: "msg_proceed_to_checkout".tr,
            margin: EdgeInsets.only(
              left: 11.h,
              right: 5.h,
            ),
          ),
          SizedBox(height: 50.v),
        ],
      ),
    );
  }
}
