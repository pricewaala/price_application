import '../homepage_two_screen/widgets/productcard15_item_widget.dart';
import 'bloc/homepage_two_bloc.dart';
import 'models/homepage_two_model.dart';
import 'models/productcard15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:price_s_application2/widgets/custom_icon_button.dart';

class HomepageTwoScreen extends StatelessWidget {
  const HomepageTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageTwoBloc>(
      create: (context) => HomepageTwoBloc(HomepageTwoState(
        homepageTwoModelObj: HomepageTwoModel(),
      ))
        ..add(HomepageTwoInitialEvent()),
      child: HomepageTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90005,
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
                      _buildAutumnCollection(context),
                      SizedBox(height: 34.v),
                      _buildFeatureProducts(context),
                      SizedBox(height: 18.v),
                      _buildBanner1(context),
                      SizedBox(height: 38.v),
                      _buildRecommended(context),
                      SizedBox(height: 30.v),
                      _buildWhiteFashionHoodie1(context),
                      SizedBox(height: 34.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: _buildTopCollection(
                          context,
                          text: "lbl_top_collection".tr,
                          text1: "lbl_show_all".tr,
                        ),
                      ),
                      SizedBox(height: 33.v),
                      _buildView(context),
                      SizedBox(height: 16.v),
                      _buildHomepageTwo(context),
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
        imagePath: ImageConstant.imgTelevisionGray5006,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 20.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_fluxstore".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPinGray5006,
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
                decoration: AppDecoration.outlineGray5006.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder21,
                ),
                child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillGrayTL18,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlueGray900,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "lbl_women".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006,
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
                  decoration: AppDecoration.fillGray90007.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrastBlueGray200,
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
                    style: CustomTextStyles
                        .bodySmallProductSansLightBluegray40001Light10,
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
                    decoration: IconButtonStyleHelper.fillGrayTL181,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpBlueGray200,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Text(
                  "lbl_accessories".tr,
                  style: CustomTextStyles
                      .bodySmallProductSansLightBluegray40001Light10,
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
                  decoration: IconButtonStyleHelper.fillGrayTL181,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFlashlightBlueGray200,
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  "lbl_beauty".tr,
                  style: CustomTextStyles
                      .bodySmallProductSansLightBluegray40001Light10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAutumnCollection(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.bottomRight,
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
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 8.h,
                bottom: 8.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 116.h,
                      child: Text(
                        "msg_autumn_collection_2021".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.titleLargeProductSansBold.copyWith(
                          height: 1.41,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 33.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 10.v,
                    width: 41.h,
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
  Widget _buildFeatureProducts(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: _buildTopCollection(
            context,
            text: "msg_feature_products".tr,
            text1: "lbl_show_all".tr,
          ),
        ),
        SizedBox(height: 22.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 227.v,
            child: BlocSelector<HomepageTwoBloc, HomepageTwoState,
                HomepageTwoModel?>(
              selector: (state) => state.homepageTwoModelObj,
              builder: (context, homepageTwoModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 35.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 20.h,
                    );
                  },
                  itemCount:
                      homepageTwoModelObj?.productcard15ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard15ItemModel model =
                        homepageTwoModelObj?.productcard15ItemList[index] ??
                            Productcard15ItemModel();
                    return Productcard15ItemWidget(
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
  Widget _buildBanner1(BuildContext context) {
    return SizedBox(
      height: 158.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillGray90007.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1xxl345,
                height: 157.v,
                width: 288.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(55.h, 6.v, 16.h, 20.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 12.v,
                              width: 1.h,
                              margin: EdgeInsets.only(bottom: 4.v),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_new_collection".tr,
                                style: CustomTextStyles
                                    .bodySmallProductSansLightBluegray200Light,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 19.v),
                        SizedBox(
                          width: 101.h,
                          child: Text(
                            "msg_hang_out_party".tr,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .titleLargeProductSansLightGray200Light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.fillBluegray40001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder66,
                    ),
                    child: Opacity(
                      opacity: 0.4,
                      child: Container(
                        height: 102.adaptSize,
                        width: 102.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray40001.withOpacity(0.49),
                          borderRadius: BorderRadius.circular(
                            51.h,
                          ),
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
  Widget _buildRecommended(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_recommended".tr,
            style: CustomTextStyles.titleLargeProductSansGray5006Bold,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_show_all".tr,
              style: CustomTextStyles.bodyMediumGray20013,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWhiteFashionHoodie1(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 32.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: 66.v,
                  width: 213.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: _buildCottonTShirt(
                          context,
                          labelText: "msg_white_fashion_hoodie".tr,
                          priceText: "lbl_29_00".tr,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage6466x66,
                        height: 66.adaptSize,
                        width: 66.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(left: 15.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: 66.v,
                  width: 213.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: _buildCottonTShirt(
                          context,
                          labelText: "lbl_cotton_t_shirt".tr,
                          priceText: "lbl_30_00".tr,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage6466x66,
                                height: 66.adaptSize,
                                width: 66.adaptSize,
                                radius: BorderRadius.circular(
                                  8.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage65,
                                height: 66.adaptSize,
                                width: 66.adaptSize,
                                radius: BorderRadius.circular(
                                  8.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 366.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 141.v,
              width: 327.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(right: 15.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.h,
                        vertical: 22.v,
                      ),
                      decoration: AppDecoration.fillGray80001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 6.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 12.v,
                                      width: 1.h,
                                      margin: EdgeInsets.only(bottom: 1.v),
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray200,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_sale_up_to_40".tr,
                                        style: CustomTextStyles
                                            .bodySmallProductSansLightBluegray200Light,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 23.v),
                                SizedBox(
                                  width: 165.h,
                                  child: Text(
                                    "msg_for_slim_beauty".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleLargeProductSansLightGray10001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.3,
                            child: Container(
                              height: 86.adaptSize,
                              width: 86.adaptSize,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                top: 3.v,
                                bottom: 6.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray40001.withOpacity(0.46),
                                borderRadius: BorderRadius.circular(
                                  43.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup141x139,
                    height: 141.v,
                    width: 139.h,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 229.v,
              width: 312.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 209.v,
                      width: 312.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: AppDecoration.fillGray80001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: 209.v,
                                width: 230.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray80001,
                                  borderRadius: BorderRadius.circular(
                                    10.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 114.adaptSize,
                                width: 114.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 41.v,
                                  right: 33.h,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      appTheme.blueGray40001.withOpacity(0.53),
                                  borderRadius: BorderRadius.circular(
                                    57.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 23.h,
                                top: 34.v,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 12.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray200,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "msg_summer_collection".tr,
                                      style: CustomTextStyles
                                          .bodySmallProductSansLightBluegray200Light,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 187.h,
                              margin: EdgeInsets.only(
                                left: 24.h,
                                bottom: 54.v,
                              ),
                              child: Text(
                                "msg_most_sexy_fabulous_design".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleLargeProductSansMediumGray10001
                                    .copyWith(
                                  height: 1.48,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage69,
                    height: 229.v,
                    width: 152.h,
                    alignment: Alignment.centerRight,
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
  Widget _buildHomepageTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.gray80001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 194.v,
              width: 148.h,
              decoration: AppDecoration.fillGray80001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 61.h,
                      margin: EdgeInsets.only(
                        right: 4.h,
                        bottom: 53.v,
                      ),
                      child: Text(
                        "msg_the_office_life".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles
                            .bodyLargeProductSansLightGray10001Light,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 42.v,
                        right: 19.h,
                      ),
                      child: Text(
                        "lbl_t_shirts".tr,
                        style: CustomTextStyles.bodyMediumRobotoBluegray200,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage72,
                    height: 194.v,
                    width: 87.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 10.h),
            color: appTheme.gray80001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 194.v,
              width: 151.h,
              decoration: AppDecoration.fillGray80001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 85.h,
                      margin: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "lbl_elegant_design".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodyLargeProductSansLightGray10001,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 40.v,
                      ),
                      child: Text(
                        "lbl_dresses".tr,
                        style: CustomTextStyles.bodyMediumRobotoBluegray200,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage76,
                    height: 194.v,
                    width: 71.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.centerRight,
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
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray90005,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteA700.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame33104Gray80001,
        height: 23.v,
        width: 269.h,
        margin: EdgeInsets.fromLTRB(53.h, 24.v, 51.h, 32.v),
      ),
    );
  }

  /// Common widget
  Widget _buildCottonTShirt(
    BuildContext context, {
    required String labelText,
    required String priceText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray90007.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              labelText,
              style: CustomTextStyles.labelLargeGray5006.copyWith(
                color: appTheme.gray5006,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 61.h),
            child: Text(
              priceText,
              style: CustomTextStyles.titleMediumGray5006.copyWith(
                color: appTheme.gray5006,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTopCollection(
    BuildContext context, {
    required String text,
    required String text1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: CustomTextStyles.titleLargeProductSansGray5006Bold.copyWith(
            color: appTheme.gray5006,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(
            text1,
            style: CustomTextStyles.bodyMediumGray20013.copyWith(
              color: appTheme.gray200,
            ),
          ),
        ),
      ],
    );
  }
}
