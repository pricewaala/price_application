import '../homepage_full_three_screen/widgets/banner3_item_widget.dart';
import '../homepage_full_three_screen/widgets/productcard13_item_widget.dart';
import '../homepage_full_three_screen/widgets/productcard14_item_widget.dart';
import '../homepage_full_three_screen/widgets/settings_item_widget.dart';
import '../homepage_full_three_screen/widgets/userprofile12_item_widget.dart';
import 'bloc/homepage_full_three_bloc.dart';
import 'models/banner3_item_model.dart';
import 'models/homepage_full_three_model.dart';
import 'models/productcard13_item_model.dart';
import 'models/productcard14_item_model.dart';
import 'models/settings_item_model.dart';
import 'models/userprofile12_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class HomepageFullThreeScreen extends StatelessWidget {
  const HomepageFullThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageFullThreeBloc>(
      create: (context) => HomepageFullThreeBloc(HomepageFullThreeState(
        homepageFullThreeModelObj: HomepageFullThreeModel(),
      ))
        ..add(HomepageFullThreeInitialEvent()),
      child: HomepageFullThreeScreen(),
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Column(
                      children: [
                        _buildSettings(context),
                        SizedBox(height: 34.v),
                        _buildFeatureProducts(context),
                        SizedBox(height: 18.v),
                        _buildBanner1(context),
                        SizedBox(height: 37.v),
                        _buildRecommended(context),
                        SizedBox(height: 35.v),
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
                        _buildBanner3(context),
                      ],
                    ),
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
  Widget _buildSettings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Column(
        children: [
          SizedBox(
            height: 62.v,
            child: BlocSelector<HomepageFullThreeBloc, HomepageFullThreeState,
                HomepageFullThreeModel?>(
              selector: (state) => state.homepageFullThreeModelObj,
              builder: (context, homepageFullThreeModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 49.h,
                    );
                  },
                  itemCount:
                      homepageFullThreeModelObj?.settingsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SettingsItemModel model =
                        homepageFullThreeModelObj?.settingsItemList[index] ??
                            SettingsItemModel();
                    return SettingsItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 28.v),
          BlocBuilder<HomepageFullThreeBloc, HomepageFullThreeState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 168.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    state.sliderIndex = index;
                  },
                ),
                itemCount: state.homepageFullThreeModelObj
                        ?.userprofile12ItemList.length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  Userprofile12ItemModel model = state.homepageFullThreeModelObj
                          ?.userprofile12ItemList[index] ??
                      Userprofile12ItemModel();
                  return Userprofile12ItemWidget(
                    model,
                  );
                },
              );
            },
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
            child: BlocSelector<HomepageFullThreeBloc, HomepageFullThreeState,
                HomepageFullThreeModel?>(
              selector: (state) => state.homepageFullThreeModelObj,
              builder: (context, homepageFullThreeModelObj) {
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
                      homepageFullThreeModelObj?.productcard13ItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    Productcard13ItemModel model = homepageFullThreeModelObj
                            ?.productcard13ItemList[index] ??
                        Productcard13ItemModel();
                    return Productcard13ItemWidget(
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
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillGray90007.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1xxl344,
                height: 157.v,
                width: 288.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 55.h,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 34.v,
                      bottom: 40.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 12.v,
                              width: 1.h,
                              margin: EdgeInsets.symmetric(vertical: 1.v),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray200,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_new_collection".tr,
                                style: CustomTextStyles
                                    .bodySmallProductSansLightBluegray200_1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18.v),
                        SizedBox(
                          width: 107.h,
                          child: Text(
                            "msg_hang_out_party".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .titleLargeProductSansLightGray200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 158.v,
                    width: 132.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage64,
                          height: 158.v,
                          width: 119.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 6.v),
                            padding: EdgeInsets.all(15.h),
                            decoration:
                                AppDecoration.fillBluegray40001.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder66,
                            ),
                            child: Opacity(
                              opacity: 0.4,
                              child: Container(
                                height: 102.adaptSize,
                                width: 102.adaptSize,
                                decoration: BoxDecoration(
                                  color:
                                      appTheme.blueGray40001.withOpacity(0.49),
                                  borderRadius: BorderRadius.circular(
                                    51.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
  Widget _buildRecommended(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_recommended".tr,
                style: CustomTextStyles.titleLargeProductSans,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_show_all".tr,
                  style: CustomTextStyles.bodyMediumGray20013,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 66.v,
            child: BlocSelector<HomepageFullThreeBloc, HomepageFullThreeState,
                HomepageFullThreeModel?>(
              selector: (state) => state.homepageFullThreeModelObj,
              builder: (context, homepageFullThreeModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 32.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 15.h,
                    );
                  },
                  itemCount:
                      homepageFullThreeModelObj?.productcard14ItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    Productcard14ItemModel model = homepageFullThreeModelObj
                            ?.productcard14ItemList[index] ??
                        Productcard14ItemModel();
                    return Productcard14ItemWidget(
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
                      decoration: AppDecoration.fillGray90007.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 12.v),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 12.v,
                                      width: 1.h,
                                      margin: EdgeInsets.only(bottom: 5.v),
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray200,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 8.h,
                                        top: 2.v,
                                      ),
                                      child: Text(
                                        "lbl_sale_up_to_40".tr,
                                        style: CustomTextStyles
                                            .bodySmallProductSansLightBluegray200Light,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 17.v),
                                SizedBox(
                                  width: 87.h,
                                  child: Text(
                                    "msg_for_slim_beauty".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleLargeProductSansLightGray5006,
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
                                top: 3.v,
                                right: 9.h,
                                bottom: 8.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray70075,
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
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: AppDecoration.fillGray90007.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: 209.v,
                                width: 230.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray90007,
                                  borderRadius: BorderRadius.circular(
                                    10.h,
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 12.v,
                                            width: 1.h,
                                            margin:
                                                EdgeInsets.only(bottom: 4.v),
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
                                      SizedBox(height: 23.v),
                                      SizedBox(
                                        width: 94.h,
                                        child: Text(
                                          "msg_most_sexy_fabulous_design".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleLargeProductSansMediumGray5006
                                              .copyWith(
                                            height: 1.48,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Opacity(
                                    opacity: 0.9,
                                    child: Container(
                                      height: 114.adaptSize,
                                      width: 114.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 9.h,
                                        top: 7.v,
                                        bottom: 7.v,
                                      ),
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray900Ab,
                                        borderRadius: BorderRadius.circular(
                                          57.h,
                                        ),
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
  Widget _buildBanner3(BuildContext context) {
    return SizedBox(
      height: 194.v,
      child: BlocSelector<HomepageFullThreeBloc, HomepageFullThreeState,
          HomepageFullThreeModel?>(
        selector: (state) => state.homepageFullThreeModelObj,
        builder: (context, homepageFullThreeModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 10.h,
              );
            },
            itemCount: homepageFullThreeModelObj?.banner3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Banner3ItemModel model =
                  homepageFullThreeModelObj?.banner3ItemList[index] ??
                      Banner3ItemModel();
              return Banner3ItemWidget(
                model,
              );
            },
          );
        },
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
  Widget _buildTopCollection(
    BuildContext context, {
    required String text,
    required String text1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: CustomTextStyles.titleLargeProductSans.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 5.v,
          ),
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
