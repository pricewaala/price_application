import '../product_full_two_screen/widgets/arrowleft_item_widget.dart';
import '../product_full_two_screen/widgets/productcardlist1_item_widget.dart';
import 'bloc/product_full_two_bloc.dart';
import 'models/arrowleft_item_model.dart';
import 'models/product_full_two_model.dart';
import 'models/productcardlist1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:price_s_application2/core/app_export.dart';
import 'package:price_s_application2/widgets/custom_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductFullTwoScreen extends StatelessWidget {
  const ProductFullTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductFullTwoBloc>(
      create: (context) => ProductFullTwoBloc(ProductFullTwoState(
        productFullTwoModelObj: ProductFullTwoModel(),
      ))
        ..add(ProductFullTwoInitialEvent()),
      child: ProductFullTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1783.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 416.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.gray5005,
                      ),
                    ),
                  ),
                  _buildArrowLeftStack(context),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 603.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_color".tr,
                              style:
                                  CustomTextStyles.titleMediumMulishGray80007,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_4_available".tr,
                              style: CustomTextStyles
                                  .titleSmallMulishBluegray20001,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgColor,
                            height: 44.v,
                            width: 176.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 51.v),
                      decoration: AppDecoration.outlineBlack9008.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildSportwearSetRow(context),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3.v),
                                    child: CustomRatingBar(
                                      initialRating: 5,
                                      itemSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 7.h,
                                      top: 4.v,
                                    ),
                                    child: Text(
                                      "lbl_83".tr,
                                      style: CustomTextStyles
                                          .bodySmallProductSansLightWhiteA700_1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 17.v),
                          Divider(
                            color: appTheme.gray90007,
                            indent: 31.h,
                            endIndent: 31.h,
                          ),
                          SizedBox(height: 14.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 32.h,
                                right: 118.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_color".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBluegray200,
                                  ),
                                  Text(
                                    "lbl_size".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBluegray200,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildColorRow(context),
                          SizedBox(height: 33.v),
                          Divider(
                            color: appTheme.gray90007,
                            indent: 31.h,
                            endIndent: 31.h,
                          ),
                          SizedBox(height: 15.v),
                          _buildDescriptionRow(context),
                          SizedBox(height: 8.v),
                          Divider(
                            color: appTheme.gray90007,
                            indent: 32.h,
                            endIndent: 30.h,
                          ),
                          SizedBox(height: 21.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 288.h,
                              margin: EdgeInsets.only(left: 32.h),
                              child: ReadMoreText(
                                "msg_sportswear_is_no".tr,
                                trimLines: 4,
                                colorClickableText: appTheme.blueGray500,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: "lbl_read_more".tr,
                                moreStyle: CustomTextStyles
                                    .bodySmallProductSansLightGray5006_1
                                    .copyWith(
                                  height: 1.67,
                                ),
                                lessStyle: CustomTextStyles
                                    .bodySmallProductSansLightGray5006_1
                                    .copyWith(
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 37.v),
                          _buildReviewsColumn(context),
                          SizedBox(height: 40.v),
                          _buildJenniferRoseColumn(context),
                          SizedBox(height: 33.v),
                          _buildKellyRihanaColumn(context),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 31.h),
                            child: _buildSimilarProductRow(
                              context,
                              dynamicText: "lbl_similar_product".tr,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Divider(
                            color: appTheme.gray90007,
                            indent: 31.h,
                            endIndent: 31.h,
                          ),
                          SizedBox(height: 293.v),
                          _buildComponentTwoColumn(context),
                          SizedBox(height: 72.v),
                        ],
                      ),
                    ),
                  ),
                  _buildProductCardList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftStack(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 509.v,
        width: 355.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage87,
              height: 509.v,
              width: 355.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 341.v,
                width: 309.h,
                margin: EdgeInsets.only(
                  left: 14.h,
                  top: 18.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    BlocBuilder<ProductFullTwoBloc, ProductFullTwoState>(
                      builder: (context, state) {
                        return CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 341.v,
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
                          itemCount: state.productFullTwoModelObj
                                  ?.arrowleftItemList.length ??
                              0,
                          itemBuilder: (context, index, realIndex) {
                            ArrowleftItemModel model = state
                                    .productFullTwoModelObj
                                    ?.arrowleftItemList[index] ??
                                ArrowleftItemModel();
                            return ArrowleftItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child:
                          BlocBuilder<ProductFullTwoBloc, ProductFullTwoState>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 10.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: state.sliderIndex,
                              count: state.productFullTwoModelObj
                                      ?.arrowleftItemList.length ??
                                  0,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                dotColor: appTheme.gray80008,
                                activeDotScale: 2.0,
                                dotHeight: 5.v,
                                dotWidth: 5.h,
                              ),
                            ),
                          );
                        },
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

  /// Section Widget
  Widget _buildSportwearSetRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 29.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_sportwear_set".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Text(
            "lbl_80_00".tr,
            style: CustomTextStyles.headlineMediumWhiteA700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColorRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgColorWhiteA70034x102,
            height: 34.v,
            width: 102.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 33.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray90007.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Text(
                  "lbl_s".tr,
                  style: CustomTextStyles.labelLargeGray200,
                ),
              ),
              Container(
                width: 33.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray90007.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Text(
                  "lbl_m".tr,
                  style: CustomTextStyles.labelLargeGray200,
                ),
              ),
              Container(
                width: 33.adaptSize,
                margin: EdgeInsets.only(left: 8.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray5006.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Text(
                  "lbl_l".tr,
                  style: CustomTextStyles.labelLargeGray90005,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(vertical: 2.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_description".tr,
            style: CustomTextStyles.titleMediumGray5006,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownGray5006,
            height: 6.v,
            width: 12.h,
            margin: EdgeInsets.only(
              top: 6.v,
              right: 6.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildSimilarProductRow(
              context,
              dynamicText: "lbl_reviews".tr,
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            color: appTheme.gray90007,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl_4_9".tr,
                  style: CustomTextStyles.displayMediumGray5006,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 16.v,
                    bottom: 13.v,
                  ),
                  child: Text(
                    "lbl_out_of_5".tr,
                    style: CustomTextStyles.bodySmallPoppinsGray20011,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    children: [
                      CustomRatingBar(
                        initialRating: 0,
                        itemSize: 18,
                      ),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_83_ratings".tr,
                          style: CustomTextStyles
                              .bodySmallProductSansLightGray20010,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "lbl_5".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 12.v,
                width: 13.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  bottom: 1.v,
                ),
              ),
              Container(
                height: 4.v,
                width: 234.h,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 234.h,
                        child: Divider(
                          color: appTheme.gray200,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 198.h,
                        child: Divider(
                          color: appTheme.blueGray500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "lbl_80".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl_4".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 12.v,
                  width: 13.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 1.v,
                  ),
                ),
                Container(
                  height: 4.v,
                  width: 234.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 234.h,
                          child: Divider(
                            color: appTheme.gray200,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 4.v,
                          width: 46.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_12".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_3".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 12.v,
                  width: 13.h,
                  margin: EdgeInsets.only(left: 5.h),
                ),
                Container(
                  height: 4.v,
                  width: 234.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 234.h,
                          child: Divider(
                            color: appTheme.gray200,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 4.v,
                          width: 21.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "lbl_52".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_2".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray200_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 12.v,
                  width: 13.h,
                  margin: EdgeInsets.only(left: 5.h),
                ),
                Container(
                  height: 4.v,
                  width: 234.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 234.h,
                          child: Divider(
                            color: appTheme.gray200,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 4.v,
                          width: 14.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray500,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "lbl_32".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_1".tr,
                style: CustomTextStyles.bodySmallProductSansLightGray200_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 12.v,
                width: 13.h,
                margin: EdgeInsets.only(left: 8.h),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Divider(
                    color: appTheme.gray200,
                    indent: 11.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "lbl_0".tr,
                  style: CustomTextStyles.bodySmallProductSansLightGray5006_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_47_reviews".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray200,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "lbl_write_a_review".tr,
                    style: CustomTextStyles.bodySmallProductSansLightGray200,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEditGray200,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJenniferRoseColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 1.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse76,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_jennifer_rose".tr,
                        style:
                            CustomTextStyles.labelLargeProductSansWhiteA700Bold,
                      ),
                      SizedBox(height: 9.v),
                      CustomRatingBar(
                        initialRating: 5,
                        itemSize: 9,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_5m_ago".tr,
                    style: CustomTextStyles.labelMediumNunitoBluegray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          SizedBox(
            width: 311.h,
            child: Text(
              "msg_i_love_it_awesome".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodySmallProductSansLightGray500611.copyWith(
                height: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKellyRihanaColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 31.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse77,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_kelly_rihana".tr,
                        style:
                            CustomTextStyles.labelLargeProductSansWhiteA700Bold,
                      ),
                      SizedBox(height: 8.v),
                      CustomRatingBar(
                        initialRating: 5,
                        itemSize: 9,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_9m_ago".tr,
                    style: CustomTextStyles.labelMediumNunitoBluegray90004,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            width: 303.h,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 6.h,
            ),
            child: Text(
              "msg_i_m_very_happy_with".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodySmallProductSansLightGray500611.copyWith(
                height: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwoColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 117.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillGray5006.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBagGray90005,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 3.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  top: 5.v,
                ),
                child: Text(
                  "lbl_add_to_cart".tr,
                  style: CustomTextStyles.titleMediumGray90005,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 87.h,
            child: Divider(
              color: appTheme.gray90005,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              color: appTheme.gray5006,
              indent: 19.h,
              endIndent: 9.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        height: 1782.v,
        child: BlocSelector<ProductFullTwoBloc, ProductFullTwoState,
            ProductFullTwoModel?>(
          selector: (state) => state.productFullTwoModelObj,
          builder: (context, productFullTwoModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(
                left: 31.h,
                top: 1442.v,
                bottom: 116.v,
              ),
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
                  productFullTwoModelObj?.productcardlist1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcardlist1ItemModel model =
                    productFullTwoModelObj?.productcardlist1ItemList[index] ??
                        Productcardlist1ItemModel();
                return Productcardlist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSimilarProductRow(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            dynamicText,
            style: CustomTextStyles.titleMediumGray5006.copyWith(
              color: appTheme.gray5006,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDownGray500624x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
