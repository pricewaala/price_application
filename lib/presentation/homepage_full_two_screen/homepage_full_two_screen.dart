import '../homepage_full_two_screen/widgets/homepagefulltwolist_item_widget.dart';
import '../homepage_full_two_screen/widgets/productcard6_item_widget.dart';
import '../homepage_full_two_screen/widgets/productcard7_item_widget.dart';
import '../homepage_full_two_screen/widgets/userprofile5_item_widget.dart';
import '../homepage_full_two_screen/widgets/userprofile6_item_widget.dart';
import 'bloc/homepage_full_two_bloc.dart';
import 'models/homepage_full_two_model.dart';
import 'models/homepagefulltwolist_item_model.dart';
import 'models/productcard6_item_model.dart';
import 'models/productcard7_item_model.dart';
import 'models/userprofile5_item_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:price_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:price_s_application2/widgets/app_bar/custom_app_bar.dart';

class HomepageFullTwoScreen extends StatelessWidget {
  const HomepageFullTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageFullTwoBloc>(
      create: (context) => HomepageFullTwoBloc(HomepageFullTwoState(
        homepageFullTwoModelObj: HomepageFullTwoModel(),
      ))
        ..add(HomepageFullTwoInitialEvent()),
      child: HomepageFullTwoScreen(),
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
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Column(
                      children: [
                        _buildUserProfileColumn(context),
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
                            text: "lbl_top_collection".tr,
                            text1: "lbl_show_all".tr,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        _buildHomepageFullTwoList(context),
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
          top: 20.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_fluxstore".tr,
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
  Widget _buildUserProfileColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Column(
        children: [
          SizedBox(
            height: 62.v,
            child: BlocSelector<HomepageFullTwoBloc, HomepageFullTwoState,
                HomepageFullTwoModel?>(
              selector: (state) => state.homepageFullTwoModelObj,
              builder: (context, homepageFullTwoModelObj) {
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
                      homepageFullTwoModelObj?.userprofile5ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userprofile5ItemModel model =
                        homepageFullTwoModelObj?.userprofile5ItemList[index] ??
                            Userprofile5ItemModel();
                    return Userprofile5ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 28.v),
          BlocBuilder<HomepageFullTwoBloc, HomepageFullTwoState>(
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
                itemCount: state
                        .homepageFullTwoModelObj?.userprofile6ItemList.length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  Userprofile6ItemModel model = state.homepageFullTwoModelObj
                          ?.userprofile6ItemList[index] ??
                      Userprofile6ItemModel();
                  return Userprofile6ItemWidget(
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
            text: "msg_feature_products".tr,
            text1: "lbl_show_all".tr,
          ),
        ),
        SizedBox(height: 22.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 227.v,
            child: BlocSelector<HomepageFullTwoBloc, HomepageFullTwoState,
                HomepageFullTwoModel?>(
              selector: (state) => state.homepageFullTwoModelObj,
              builder: (context, homepageFullTwoModelObj) {
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
                      homepageFullTwoModelObj?.productcard6ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard6ItemModel model =
                        homepageFullTwoModelObj?.productcard6ItemList[index] ??
                            Productcard6ItemModel();
                    return Productcard6ItemWidget(
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
                imagePath: ImageConstant.imgImage1xxl341,
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
            child: BlocSelector<HomepageFullTwoBloc, HomepageFullTwoState,
                HomepageFullTwoModel?>(
              selector: (state) => state.homepageFullTwoModelObj,
              builder: (context, homepageFullTwoModelObj) {
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
                      homepageFullTwoModelObj?.productcard7ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productcard7ItemModel model =
                        homepageFullTwoModelObj?.productcard7ItemList[index] ??
                            Productcard7ItemModel();
                    return Productcard7ItemWidget(
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
  Widget _buildHomepageFullTwoList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 15.h,
      ),
      child: BlocSelector<HomepageFullTwoBloc, HomepageFullTwoState,
          HomepageFullTwoModel?>(
        selector: (state) => state.homepageFullTwoModelObj,
        builder: (context, homepageFullTwoModelObj) {
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
            itemCount:
                homepageFullTwoModelObj?.homepagefulltwolistItemList.length ??
                    0,
            itemBuilder: (context, index) {
              HomepagefulltwolistItemModel model =
                  homepageFullTwoModelObj?.homepagefulltwolistItemList[index] ??
                      HomepagefulltwolistItemModel();
              return HomepagefulltwolistItemWidget(
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
    required String text,
    required String text1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
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
            text1,
            style: CustomTextStyles.bodyMediumGray50004.copyWith(
              color: appTheme.gray50004,
            ),
          ),
        ),
      ],
    );
  }
}
