import '../homepage_full_screen/widgets/productcard1_item_widget.dart';
import '../homepage_full_screen/widgets/productcard2_item_widget.dart';
import '../homepage_full_screen/widgets/salebannerlist_item_widget.dart';
import '../homepage_full_screen/widgets/userprofile_item_widget.dart';
import '../homepage_full_screen/widgets/widget_item_widget.dart';
import 'bloc/homepage_full_bloc.dart';
import 'models/homepage_full_model.dart';
import 'models/productcard1_item_model.dart';
import 'models/productcard2_item_model.dart';
import 'models/salebannerlist_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'models/widget_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class HomepageFullScreen extends StatelessWidget {
  const HomepageFullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageFullBloc>(
      create: (context) => HomepageFullBloc(HomepageFullState(
        homepageFullModelObj: HomepageFullModel(),
      ))
        ..add(HomepageFullInitialEvent()),
      child: HomepageFullScreen(),
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.v),
                    child: Column(
                      children: [
                        _buildWidgetColumn(context),
                        SizedBox(height: 34.v),
                        _buildFeatureProductsColumn(context),
                        SizedBox(height: 18.v),
                        _buildFrameStack(context),
                        SizedBox(height: 37.v),
                        _buildRecommendedColumn(context),
                        SizedBox(height: 35.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.h),
                          child: _buildTopCollectionRow(
                            context,
                            dynamicText: "lbl_top_collection".tr,
                            dynamicText1: "lbl_show_all".tr,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        _buildSaleBannerList(context),
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
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_gemstore2".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellPin,
          margin: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidgetColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Column(
        children: [
          SizedBox(
            height: 62.v,
            child: BlocSelector<HomepageFullBloc, HomepageFullState,
                HomepageFullModel?>(
              selector: (state) => state.homepageFullModelObj,
              builder: (context, homepageFullModelObj) {
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
                  itemCount: homepageFullModelObj?.widgetItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    WidgetItemModel model =
                        homepageFullModelObj?.widgetItemList[index] ??
                            WidgetItemModel();
                    return WidgetItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 28.v),
          BlocBuilder<HomepageFullBloc, HomepageFullState>(
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
                itemCount:
                    state.homepageFullModelObj?.userprofileItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  UserprofileItemModel model =
                      state.homepageFullModelObj?.userprofileItemList[index] ??
                          UserprofileItemModel();
                  return UserprofileItemWidget(
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
  Widget _buildFeatureProductsColumn(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: _buildTopCollectionRow(
            context,
            dynamicText: "msg_feature_products".tr,
            dynamicText1: "lbl_show_all".tr,
          ),
        ),
        SizedBox(height: 22.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 227.v,
            child: BlocSelector<HomepageFullBloc, HomepageFullState,
                HomepageFullModel?>(
              selector: (state) => state.homepageFullModelObj,
              builder: (context, homepageFullModelObj) {
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
                      homepageFullModelObj?.productcard1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard1ItemModel model =
                        homepageFullModelObj?.productcard1ItemList[index] ??
                            Productcard1ItemModel();
                    return Productcard1ItemWidget(
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
  Widget _buildFrameStack(BuildContext context) {
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
                imagePath: ImageConstant.imgImage1xxl34157x288,
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
                    padding: EdgeInsets.only(
                      top: 28.v,
                      bottom: 20.v,
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
                        SizedBox(height: 18.v),
                        SizedBox(
                          width: 107.h,
                          child: Text(
                            "msg_hang_out_party".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .titleLargeProductSansLightGray80001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
  Widget _buildRecommendedColumn(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_recommended".tr,
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
        ),
        SizedBox(height: 32.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 66.v,
            child: BlocSelector<HomepageFullBloc, HomepageFullState,
                HomepageFullModel?>(
              selector: (state) => state.homepageFullModelObj,
              builder: (context, homepageFullModelObj) {
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
                      homepageFullModelObj?.productcard2ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard2ItemModel model =
                        homepageFullModelObj?.productcard2ItemList[index] ??
                            Productcard2ItemModel();
                    return Productcard2ItemWidget(
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
  Widget _buildSaleBannerList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 15.h,
      ),
      child:
          BlocSelector<HomepageFullBloc, HomepageFullState, HomepageFullModel?>(
        selector: (state) => state.homepageFullModelObj,
        builder: (context, homepageFullModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: homepageFullModelObj?.salebannerlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              SalebannerlistItemModel model =
                  homepageFullModelObj?.salebannerlistItemList[index] ??
                      SalebannerlistItemModel();
              return SalebannerlistItemWidget(
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
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.15),
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
        imagePath: ImageConstant.imgFrame33104,
        height: 23.v,
        width: 269.h,
        margin: EdgeInsets.fromLTRB(53.h, 24.v, 51.h, 32.v),
      ),
    );
  }

  /// Common widget
  Widget _buildTopCollectionRow(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.titleLargeProductSansBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 5.v,
          ),
          child: Text(
            dynamicText1,
            style: CustomTextStyles.bodyMediumGray50004.copyWith(
              color: appTheme.gray50004,
            ),
          ),
        ),
      ],
    );
  }
}
