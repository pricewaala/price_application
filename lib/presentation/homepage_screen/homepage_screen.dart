import '../homepage_screen/widgets/productcard_item_widget.dart';
import 'bloc/homepage_bloc.dart';
import 'models/homepage_model.dart';
import 'models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageBloc>(
      create: (context) => HomepageBloc(HomepageState(
        homepageModelObj: HomepageModel(),
      ))
        ..add(HomepageInitialEvent()),
      child: HomepageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildCategories(context),
                      SizedBox(height: 28.v),
                      _buildEightyEight(context),
                      SizedBox(height: 34.v),
                      _buildFrame(context),
                      SizedBox(height: 22.v),
                      _buildProductCard(context),
                      SizedBox(height: 18.v),
                      _buildHomepage(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_gemstore".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPin,
          margin: EdgeInsets.fromLTRB(31.h, 15.v, 31.h, 14.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 42.adaptSize,
                width: 42.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.outlineBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder21,
                ),
                child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillBlueGray,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLaptop,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "lbl_women".tr,
                  style: CustomTextStyles.bodySmallProductSansLightBluegray900,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 36,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 36.v,
                  width: 38.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillGray10003.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder21,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 16.v,
                    width: 17.h,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "lbl_men".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray50005,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 28,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillGray,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl_accessories".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray50005,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 35,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(3.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFlashlight,
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  "lbl_beauty".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray50005,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShutterstock1781009285,
            height: 168.v,
            width: 312.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 116.h,
              margin: EdgeInsets.only(
                top: 20.v,
                right: 8.h,
              ),
              child: Text(
                "msg_autumn_collection_2022".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeProductSansBold.copyWith(
                  height: 1.41,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_feature_products".tr,
            style: CustomTextStyles.titleLargeProductSansBlack900,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_show_all".tr,
              style: CustomTextStyles.bodyMediumGray50004,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 227.v,
        child: BlocSelector<HomepageBloc, HomepageState, HomepageModel?>(
          selector: (state) => state.homepageModelObj,
          builder: (context, homepageModelObj) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 20.h,
                );
              },
              itemCount: homepageModelObj?.productcardItemList.length ?? 0,
              itemBuilder: (context, index) {
                ProductcardItemModel model =
                    homepageModelObj?.productcardItemList[index] ??
                        ProductcardItemModel();
                return ProductcardItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomepage(BuildContext context) {
    return SizedBox(
      height: 158.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillGray5004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1xxl34,
                height: 157.v,
                width: 288.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 107.h,
                    margin: EdgeInsets.only(
                      top: 62.v,
                      bottom: 21.v,
                    ),
                    child: Text(
                      "msg_hang_out_party".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.titleLargeProductSansLightGray80001,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 64.h),
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder66,
                    ),
                    child: Container(
                      height: 102.adaptSize,
                      width: 102.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray300,
                        borderRadius: BorderRadius.circular(
                          51.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage64,
            height: 158.v,
            width: 119.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 23.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        height: 80.v,
        width: 374.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 51.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 8.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame33104,
                      height: 23.v,
                      width: 269.h,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 54.h,
                  top: 6.v,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 12.v,
                      width: 1.h,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray40001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_new_collection".tr,
                        style: CustomTextStyles
                            .bodySmallProductSansLightBluegray40001,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
